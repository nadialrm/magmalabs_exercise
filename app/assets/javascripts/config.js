var TableAdvanced = function () {

		var initTable1 = function () {
				var table = $('.tableadvanced');

				/* Table tools samples: https://www.datatables.net/release-datatables/extras/TableTools/ */
				 $.fn.dataTableExt.oStdClasses.sFilterInput = "form-control input-xlarge input-inline";
				/* Set tabletools buttons and button container */


				var oTable = table.dataTable({
						// Internationalisation. For more info refer to http://datatables.net/manual/i18n
						"language": {
								"aria": {
										"sortAscending": ": activate to sort column ascending",
										"sortDescending": ": activate to sort column descending"
								},
								"emptyTable": "No hay informacion en la tabla",
								"info": "Mostrando del _START_ al _END_ de _TOTAL_ registros",
								"infoEmpty": "No se encontraron coincidencias",
								"infoFiltered": "(filtered1 de _MAX_ registros)",
								"lengthMenu": "Mostrar _MENU_ registros",
								"search": "Buscar:",
								"zeroRecords": "No se encontraron coincidencias"
						},
						"order": [
								// [0, 'asc']
						],
						"lengthMenu": [
								[20, 50, 75, 100, -1],
								[20, 50, 75, 100, "Todos"] // change per page values here
						],
						// set the initial value
						"pageLength": 20,
						"dom": "<'row' <'col-md-12'T>><'row'<'col-md-6 col-sm-12'l><'col-md-6 col-sm-12'f>r><'table-scrollable't><'row'<'col-md-5 col-sm-12'i><'col-md-7 col-sm-12'<'pull-right'p>>>" // horizobtal scrollable datatable
						
				});

				var tableWrapper = $('.tableadvanced_wrapper'); // datatable creates the table wrapper by adding with id {your_table_jd}_wrapper

				tableWrapper.find('.dataTables_length select').select2(); // initialize select2 dropdown

				

		}

		return {

				//main function to initiate the module
				init: function () {

						if (!jQuery().dataTable) {
								return;
						}

					
						initTable1();
						

				}

		};

}();


$(document).on("page:change", function() {

		if($('.tableadvanced').get(0) ){
				TableAdvanced.init();
		}

});