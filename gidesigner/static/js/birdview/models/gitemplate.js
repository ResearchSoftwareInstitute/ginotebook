var GiTemplate = Backbone.Model.extend({
	idAttribute: "_id",
	defaults: {
		
		id: null,
		name: "",
		model_3d: null,
		model_planview: null,
		gi_elements: [],
		url: null

	}
});