from rest_framework import serializers

from .models import Watershed
from .models import GIInstance
from .models import HumanPrefImage
from .models import GIVegGrowthState
from .models import TemplatesForEcoClimate
from .models import GITemplate
from .models import GIElement
from .models import RHESSysStratumType
from .models import RHESSysSoilType
from .models import Representation2D
from .models import Representation3D


class WatershedSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = Watershed
        fields = ('url', 'id', 'name', 'model_url', 'template_menu')

class GIInstanceSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = GIInstance
        fields = ('url', 'id', 'watershed', 'template', 'placement_poly')

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
