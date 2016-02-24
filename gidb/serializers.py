from rest_framework import serializers

from .models import *


class RegionSerializer(serializers.HyperlinkedModelSerializer):
    watersheds = serializers.HyperlinkedRelatedField(many=True, read_only=True, view_name='watershed-detail')

    class Meta:
        model = Region
        fields = ('url', 'id', 'name', 'watersheds')


class WatershedBoundarySerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = WatershedBoundary
        fields = ('url', 'id', 'name', 'boundary')


class WatershedSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = Watershed
        fields = ('url', 'id', 'name', 'region', 'model_url', 'template_menu', 'boundary')


class GIScenarioSerializer(serializers.HyperlinkedModelSerializer):
    giinstances = serializers.HyperlinkedRelatedField(many=True, read_only=True, view_name='giinstance-detail')

    class Meta:
        model = GIScenario
        fields = ('url', 'id', 'name', 'watershed', 'giinstances')


class GIInstanceSerializer(serializers.HyperlinkedModelSerializer):
    routes = serializers.HyperlinkedRelatedField(many=True, read_only=True, view_name='routes-detail')

    class Meta:
        model = GIInstance
        fields = ('url', 'id', 'watershed', 'template', 'placement_poly', 'routes')


class HumanPrefImageSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = HumanPrefImage
        fields = ('url', 'id', 'name', 'gi_instance', 'pref_image')


class GIVegGrowthStateSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = GIVegGrowthState
        fields = ('url', 'id', 'gi_instance', 'gi_element', 'leaf_area_index', 'stem_density', 'height')


class TemplatesForEcoClimateSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = TemplatesForEcoClimate
        fields = ('url', 'id', 'name', 'templates')


class GITemplateSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = GITemplate
        fields = ('url', 'id', 'name', 'model_3d', 'model_planview', 'gi_elements')


class GIElementSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = GIElement
        fields = ('url', 'id', 'name', 'model_3d', 'model_planview',
                  'stratum_type', 'soil_type', 'major_axis', 'minor_axis')


class RHESSysStratumTypeSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = RHESSysStratumType
        fields = ('url', 'id', 'name', 'rhessys_default_id')


class RHESSysSoilTypeSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = RHESSysSoilType
        fields = ('url', 'id', 'name', 'rhessys_default_id')


class Representation2DSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = Representation2D
        fields = ('url', 'id', 'rep_file', 'rep_thumbnail')


class Representation3DSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = Representation3D
        fields = ('url', 'id', 'rep_file', 'rep_thumbnail')


class GIRoutesSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = GIRoutes
        fields = ('url', 'id', 'instance', 'from_patch', 'to_gi', 'to_patch')


class GIRoutingVertexSerializer(serializers.HyperlinkedModelSerializer):
    route = serializers.HyperlinkedRelatedField(many=True, read_only=True, view_name='route_list-detail')

    class Meta:
        abstract = True

class GIRoutingVertexToGIInstanceSerializer(GIRoutingVertexSerializer):

    class Meta:
        model = GIRoutingVertexToGIInstance
        fields = ('url', 'id', 'route', 'to_instance', 'flow_proportion')


class GIRoutingVertexFromPatchSerializer(GIRoutingVertexSerializer):

    class Meta:
        model = GIRoutingVertexFromPatch
        fields = ('url', 'id', 'route', 'from_patch', 'flow_proportion')


class GIRoutingVertexToPatchSerializer(GIRoutingVertexSerializer):

    class Meta:
        model = GIRoutingVertexToPatch
        fields = ('url', 'id', 'route', 'to_patch', 'flow_proportion')
