var ProcessSearch = function () {
	
return {
  //main function to initiate the module
  init: function (parametros) {	
	  
	$('#zonas, #zonafiltrar').select2({
		theme: "bootstrap"
	});
	
	$('#zonafiltrar').parent().hide(); 
	
	$('input[name="daterange"]').daterangepicker({
	   ranges: {
	     'Hoy': [moment(), moment()],
	 'Ayer': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
	 'Ultimos 7 Dias': [moment().subtract(6, 'days'), moment()],
	 'Ultimos 30 Dias': [moment().subtract(29, 'days'), moment()],
	 'Este mes': [moment().startOf('month'), moment().endOf('month')],
	 'Mes pasado': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
	   },
	   singleDatePicker: false,
	   startDate: moment().subtract(29, 'days'),
	   maxDate:moment(),
	   locale: {
	       "format": "DD/MM/YYYY",
	   "separator": " - ",
	   "applyLabel": "Aplicar",
	   "cancelLabel": "Cancelar",
	   "fromLabel": "Desde",
	   "toLabel": "Hasta",
	   "customRangeLabel": "Personalizado",
	   "weekLabel": "S",
	   "daysOfWeek": [
	   "Do",
	   "Lu",
	   "Ma",
	   "Mi",
	   "Ju",
	   "Vi",
	   "Sa"
	   ],
	   "monthNames": [
	   "Enero",
	   "Febrero",
	   "Marzo",
	   "Abril",
	   "Mayo",
	   "Junio",
	   "Julio",
	   "Agosto",
	   "Septiembre",
	   "Octubre",
	   "Noviembre",
	   "Diciembre"
	   ],
	   "firstDay": 1
	   },
	});
	
	$('#checkCodigo').change(function() {
        if(this.checked) {
        	$("#codigo").prop('disabled', false);
        }else{
        	$("#codigo").prop('disabled', true);
        }
              
    });
	
	$('#checkNombre').change(function() {
        if(this.checked) {
        	$("#nombre").prop('disabled', false);
        }else{
        	$("#nombre").prop('disabled', true);
        }
              
    });
	
	$('#checkDates').change(function() {
        if(this.checked) {
        	$("#daterange").prop('disabled', false);
        }else{
        	$("#daterange").prop('disabled', true);
        }
              
    });
  
  $('#zonas').change(
		  function() {
			$('#zonafiltrar').html('');
  			if ($('#zonas option:selected').val() == "all"){
  				$('#zonafiltrar').parent().hide(); 
  			}
  			else if ($('#zonas option:selected').val() == "ZON_REP_1"){
  				$('#zonafiltrar').parent().show();
  				$.getJSON(parametros.opcProcUrl, {
    				ajax : 'true'
    			}, function(data) {
    				var html;
    				var len = data.length;
    				for ( var i = 0; i < len; i++) {
    					html += '<option value="' + data[i].catKey + '">'+ data[i].spanish +'</option>';
    				}
    				$('#zonafiltrar').html(html);
    			});
  			}  
  			else if ($('#zonas option:selected').val() == "ZON_REP_2"){
  				$('#zonafiltrar').parent().show();
  				$.getJSON(parametros.opcRegUrl, {
    				ajax : 'true'
    			}, function(data) {
    				var html;
    				var len = data.length;
    				for ( var i = 0; i < len; i++) {
    					html += '<option value="' + data[i] + '">'+ data[i] +'</option>';
    				}
    				$('#zonafiltrar').html(html);
    			});
  			} 
  			else if ($('#zonas option:selected').val() == "ZON_REP_3"){
  				$('#zonafiltrar').parent().show();
  				$.getJSON(parametros.opcDepUrl, {
    				ajax : 'true'
    			}, function(data) {
    				var html;
    				var len = data.length;
    				for ( var i = 0; i < len; i++) {
    					html += '<option value="' + data[i] + '">'+ data[i] +'</option>';
    				}
    				$('#zonafiltrar').html(html);
    			});
  			}
  			else if ($('#zonas option:selected').val() == "ZON_REP_4"){
  				$('#zonafiltrar').parent().show();
  				$.getJSON(parametros.opcMuniUrl, {
    				ajax : 'true'
    			}, function(data) {
    				var html;
    				var len = data.length;
    				for ( var i = 0; i < len; i++) {
    					html += '<option value="' + data[i] + '">'+ data[i] +'</option>';
    				}
    				$('#zonafiltrar').html(html);
    			});
  			} 
  			else if ($('#zonas option:selected').val() == "ZON_REP_5"){
  				$('#zonafiltrar').parent().show();
  				$.getJSON(parametros.opcSegUrl, {
    				ajax : 'true'
    			}, function(data) {
    				var html;
    				var len = data.length;
    				for ( var i = 0; i < len; i++) {
    					html += '<option value="' + data[i].ident + '">'+ data[i].codigo +'</option>';
    				}
    				$('#zonafiltrar').html(html);
    			});
  			}
          });

  $( '#encuestas-form' ).validate( {
	    rules: {
	      codigo: {
	    	  required: true
	      },
	      nombre: {
	    	  required: true
	      },
	      zonas: {
	          required: true
	      },
	      daterange: {
	          required: true
	      }
	    },
	    errorElement: 'em',
	    errorPlacement: function ( error, element ) {
	      // Add the `help-block` class to the error element
	      error.addClass( 'form-control-feedback' );
	      if ( element.prop( 'type' ) === 'checkbox' ) {
	        error.insertAfter( element.parent( 'label' ) );
	      } else {
	        error.insertAfter( element );
	      }
	    },
	    highlight: function ( element, errorClass, validClass ) {
	      $( element ).addClass( 'form-control-danger' ).removeClass( 'form-control-success' );
	      $( element ).parents( '.form-group' ).addClass( 'has-danger' ).removeClass( 'has-success' );
	    },
	    unhighlight: function (element, errorClass, validClass) {
	      $( element ).addClass( 'form-control-success' ).removeClass( 'form-control-danger' );
	      $( element ).parents( '.form-group' ).addClass( 'has-success' ).removeClass( 'has-danger' );
	    },
        submitHandler: function (form) {
            processReport();
        }
	  });
  
  Date.prototype.yyyymmdd = function() {         
      
      var yyyy = this.getFullYear().toString();                                    
      var mm = (this.getMonth()+1).toString(); // getMonth() is zero-based         
      var dd  = this.getDate().toString();             
                          
      return yyyy + '-' + (mm[1]?mm:"0"+mm[0]) + '-' + (dd[1]?dd:"0"+dd[0]);
 };
	  
  function processReport(){
	  $.blockUI({ message: parametros.waitmessage });
	  $.getJSON(parametros.encuestasUrl, $('#encuestas-form').serialize(), function(data) {
		  var table1 = $('#resultados').DataTable({
	          "oLanguage": {
	              "sUrl": parametros.dataTablesLang
	          },
	          "scrollX": true,
	          "bFilter": true, 
	          "bInfo": true, 
	          "bPaginate": true, 
	          "bDestroy": true,
	      });
		  table1.clear().draw();
		if (data == ''){
			toastr.info(data, parametros.noResults, {
				closeButton: true,
				progressBar: true,
			 });
		}
		else{
			for (var row in data) {
				var d = new Date(data[row].fechaEntrevista);
				var editUrl = parametros.encuestasUrl + data[row].ident+'/';
				btnEdit = '<a title="edit" href=' + editUrl + ' class="btn btn-xs btn-primary" ><i class="fa fa-edit"></i></a>';
				table1.row.add([data[row].segmento.comunidad, data[row].codigo, data[row].jefeFamilia, d.yyyymmdd(), data[row].pasive, btnEdit]);
			}
		}
	})
	.fail(function() {
	    alert( "error" );
	    $.unblockUI();
	});
	$.unblockUI();
  }
  }
 };
}();
