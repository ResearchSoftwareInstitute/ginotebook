from rest_framework.routers import DefaultRouter

from views import rest

router = DefaultRouter()
router.register(r'watersheds', rest.WatershedViewSet, 'watershed')
router.register(r'watersheds_boundaries', rest.WatershedBoundaryViewSet, 'watershedboundary')
router.register(r'gi_instances', rest.GIInstanceViewSet, 'giinstance')
router.register(r'human_pref_images', rest.HumanPrefImageViewSet, 'humanprefimage')
router.register(r'gi_veg_growth_states', rest.GIVegGrowthStateViewSet, 'giveggrowthstate')
router.register(r'templates_for_ecoclimates', rest.TemplatesForEcoClimateViewSet, 'templatesforecoclimate')
router.register(r'gi_templates', rest.GITemplateViewSet, 'gitemplate')
router.register(r'gi_elements', rest.GIElementViewSet, 'gielement')
router.register(r'rhessys_stratum_types', rest.RHESSysStratumTypeViewSet, 'rhessysstratumtype')
router.register(r'rhessys_soil_types', rest.RHESSysSoilTypeViewSet, 'rhessyssoiltype')
router.register(r'representation_2d', rest.Representation2DViewSet, 'representation2d')
router.register(r'representation_3d', rest.Representation3DViewSet, 'representation3d')
