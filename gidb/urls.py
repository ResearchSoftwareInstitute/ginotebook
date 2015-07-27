from rest_framework.routers import DefaultRouter

from . import views

router = DefaultRouter()
router.register(r'watersheds', views.WatershedViewSet, 'watershed')
router.register(r'gi_instances', views.GIInstanceViewSet, 'giinstance')
router.register(r'human_pref_images', views.HumanPrefImageViewSet, 'humanprefimage')
router.register(r'gi_veg_growth_states', views.GIVegGrowthStateViewSet, 'giveggrowthstate')
router.register(r'templates_for_ecoclimates', views.TemplatesForEcoClimateViewSet, 'templatesforecoclimate')
router.register(r'gi_templates', views.GITemplateViewSet, 'gitemplate')
router.register(r'gi_elements', views.GIElementViewSet, 'gielement')
router.register(r'rhessys_stratum_types', views.RHESSysStratumTypeViewSet, 'rhessysstratumtype')
router.register(r'rhessys_soil_types', views.RHESSysSoilTypeViewSet, 'rhessyssoiltype')
router.register(r'representation_2d', views.Representation2DViewSet, 'representation2d')
router.register(r'representation_3d', views.Representation3DViewSet, 'representation3d')
