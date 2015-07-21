from rest_framework.routers import DefaultRouter

from . import views

router = DefaultRouter()
router.register(r'watersheds', views.WatershedViewSet)
router.register(r'gi_instances', views.GIInstanceViewSet)
router.register(r'human_pref_images', views.HumanPrefImageViewSet)
router.register(r'gi_veg_growth_states', views.GIVegGrowthStateViewSet)
router.register(r'templates_for_ecoclimates', views.TemplatesForEcoClimateViewSet)
router.register(r'gi_templates', views.GITemplateViewSet)
router.register(r'gi_elements', views.GIElementViewSet)
router.register(r'rhessys_stratum_types', views.RHESSysSoilTypeViewSet)
router.register(r'rhessys_soil_types', views.RHESSysSoilTypeViewSet)
router.register(r'representation_2d', views.Representation2DViewSet)
router.register(r'representation_3d', views.Representation3DViewSet)
