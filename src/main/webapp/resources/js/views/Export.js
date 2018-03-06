var ProcessExport = function () {
	
return {
  //main function to initiate the module
  init: function (parametros) {	
	  
	$('#opcion').select2({
		theme: "bootstrap"
	});
	
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
	  			if ($('#zonas option:selected').val() == "ZON_REP_0"){
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
	    					html += '<option value="' + data[i] + '">'+ data[i] +'</option>';
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

  $( '#export-form' ).validate( {
	    rules: {
	      opcion: {
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
        	processExport();
        }
	  });
  
  function processExport() {
	  $.blockUI({ message: parametros.waitmessage });
	  var dataForm = $('#export-form').serialize(); 
      var iframe = document.createElement('iframe');
      iframe.id = "IFRAMEID";
      iframe.style.display = 'none';
      document.body.appendChild(iframe);
      iframe.src = parametros.exportUrl+'?'+dataForm;
      iframe.addEventListener("load", function () {
          console.log("FILE LOAD DONE.. Download should start now");

      });
      $.unblockUI();
  }
  }
 };
}();
