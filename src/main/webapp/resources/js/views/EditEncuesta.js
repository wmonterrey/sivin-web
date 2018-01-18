var ProcessEncuesta = function () {
	
var handleDatePickers = function (idioma) {
    if (jQuery().datepicker) {
        $('.date-picker').datepicker({
            language: idioma,
            autoclose: true
        });
        $('body').removeClass("modal-open"); // fix bug when inline picker is used in modal
    }
};
	
return {
  //main function to initiate the module
  init: function () {	
	  
  $('#sexJefeFamilia').select2({
	    theme: "bootstrap"
  });	
  $('#agua, #lugNecesidades, #usaCocinar, #articulos').select2({
	    theme: "bootstrap"
  });
  $('#conoceFNac, #dondeHierro, #leerEnt, #escribirEnt, #leeescEnt, #nivelEnt, #gradoEnt, #entRealizada, #entEmb, #entDioluz, #entHieacfol, #entRecHierro, #tiemHierroUnd, #dondeHierro, #tomadoHierro, #vita, #tiempVita, #evitaEmb, #dondeAntic, #nuevoEmb, #hierro, #dHierro').select2({
	    theme: "bootstrap"
  });
  $('#sexselec, #calim, #consalim, #calimenf, #clecheenf').select2({
	    theme: "bootstrap"
  });
  $('#hierron, #thierround, #ghierro, #donhierro, #fuhierro, #nvita, #tvitaund, #ndvita, #tdvita, #ncnut, #ncnutund, #doncnut, #parasit, #mParasitario, #donMp, #evitarParasito').select2({
	    theme: "bootstrap"
  });
  $('#nlactmat, #sexlmat, #pecho, #motNopecho, #dapecho, #tiempecho, #tiemmama, #dospechos, #elmatexcund, #ediopechound, #combeb, #ealimund, #bebeLiq, #reunionPeso, #quienReunionPeso, #assitioReunionPeso').select2({
	    theme: "bootstrap"
  });
  $('#msEnt, #msNin, #moEnt, #sal, #azucar').select2({
	    theme: "bootstrap"
  });
  $('#patConsAzuc, #patConsAzucFrec, #patConsSal, #patConsSalFrec, #patConsArroz, #patConsArrozFrec, #patConsAcei, #patConsAceiFrec, #patConsFri, #patConsFriFrec, #patConsCebo, #patConsCeboFrec, #patConsChi, #patConsChiFrec, #patConsQue, #patConsQueFrec, #patConsCafe, #patConsCafeFrec, #patConsTor, #patConsTorFrec, #patConsCar, #patConsCarFrec, #patConsHue, #patConsHueFrec, #patConsPan, #patConsPanFrec, #patConsBan, #patConsBanFrec').select2({
	    theme: "bootstrap"
  });
  
  $('#patConsPanDul, #patConsPanDulFrec, #patConsPla, #patConsPlaFrec, #patConsPapa, #patConsPapaFrec, #patConsLec, #patConsLecFrec, #patConsSalTom, #patConsSalTomFrec, #patConsGas, #patConsGasFrec').select2({
	    theme: "bootstrap"
  });
  
  $('#patConsCarRes, #patConsCarResFrec, #patConsAvena, #patConsAvenaFrec, #patConsNaran, #patConsNaranFrec, #patConsPasta, #patConsPastaFrec, #patConsAyote, #patConsAyoteFrec').select2({
	    theme: "bootstrap"
  });
  
  $('#patConsMagg, #patConsMaggFrec, #patConsFrut, #patConsFrutFrec, #patConsRaic, #patConsRaicFrec, #patConsMenei, #patConsMeneiFrec, #patConsRepollo, #patConsRepolloFrec').select2({
	    theme: "bootstrap"
  });
  
  $('#patConsZana, #patConsZanaFrec, #patConsPinolillo, #patConsPinolilloFrec, #patConsOVerd, #patConsOVerdFrec, #patConsPesc, #patConsPescFrec, #patConsAlimComp, #patConsAlimCompFrec').select2({
	    theme: "bootstrap"
  });
  
  $('#patConsLecPol, #patConsLecPolFrec, #patConsCarCer, #patConsCarCerFrec, #patConsEmb, #patConsEmbFrec, #patConsMar, #patConsMarFrec, #patConsCarCaza, #patConsCarCazaFrec').select2({
	    theme: "bootstrap"
  });
  
  handleDatePickers('es');

  jQuery.validator.addMethod("noSpace", function(value, element) { 
		  return value.indexOf(" ") < 0 && value != ""; 
	}, "Invalid");
  $( '#encuesta-form' ).validate( {
    rules: {
      jefeFamilia: {
        maxlength: 250, required: true
      },
      sexJefeFamilia: {
        required: true
      },
      numPersonas: {
    	  min: 1, max: 25, required: true
      },
      cuartos: {
    	  min: 1, max: 15
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
    }
  });
  
  $(document).on('keypress','form input',function(event)
  		{                
  		    event.stopImmediatePropagation();
  		    if( event.which == 13 )
  		    {
  		        event.preventDefault();
  		        var $input = $('form input');
  		        if( $(this).is( $input.last() ) )
  		        {
  		            //Time to submit the form!!!!
  		            //alert( 'Hooray .....' );
  		        }
  		        else
  		        {
  		            $input.eq( $input.index( this ) + 1 ).focus();
  		        }
  		    }
  		});
  }
 };
}();
