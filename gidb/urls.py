from rest_framework.routers import DefaultRouter

from . import views

router = DefaultRouter()
router.register(r'watersheds', views.rest.WatershedViewSet, 'watershed')
router.register(r'watersheds_boundaries', views.rest.WatershedBoundaryViewSet, 'watershedboundary')
router.register(r'gi_instances', views.rest.GIInstanceViewSet, 'giinstance')
router.register(r'human_pref_images', views.rest.HumanPrefImageViewSet, 'humanprefimage')
router.register(r'gi_veg_growth_states', views.rest.GIVegGrowthStateViewSet, 'giveggrowthstate')
router.register(r'templates_for_ecoclimates', views.rest.TemplatesForEcoClimateViewSet, 'templatesforecoclimate')
router.register(r'gi_templates', views.rest.GITemplateViewSet, 'gitemplate')
router.register(r'gi_elements', views.rest.GIElementViewSet, 'gielement')
router.register(r'rhessys_stratum_types', views.rest.RHESSysStratumTypeViewSet, 'rhessysstratumtype')
router.register(r'rhessys_soil_types', views.rest.RHESSysSoilTypeViewSet, 'rhessyssoiltype')
router.register(r'representation_2d', views.rest.Representation2DViewSet, 'representation2d')
router.register(r'representation_3d', views.rest.Representation3DViewSet, 'representation3d')
