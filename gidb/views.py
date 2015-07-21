from rest_framework import authentication, permissions, viewsets

from .models import Watershed
from .serializers import WatershedSerializer
from .models import GIInstance
from .serializers import GIInstanceSerializer
from .models import HumanPrefImage
from .serializers import HumanPrefImageSerializer
from .models import GIVegGrowthState
from .serializers import GIVegGrowthStateSerializer
from .models import TemplatesForEcoClimate
from .serializers import TemplatesForEcoClimateSerializer
from .models import GITemplate
from .serializers import GITemplateSerializer
from .models import GIElement
from .serializers import GIElementSerializer
from .models import RHESSysStratumType
from .serializers import RHESSysStratumTypeSerializer
from .models import RHESSysSoilType
from .serializers import RHESSysSoilTypeSerializer
from .models import Representation2D
from .serializers import Representation2DSerializer
from .models import Representation3D
from .serializers import Representation3DSerializer


class DefaultsMixin(object):
    """ Default settings for rest_framework views
    """

    authentication_classes = (
        authentication.BasicAuthentication,
        authentication.SessionAuthentication,
        authentication.TokenAuthentication
    )
    permission_classes = (
        permissions.IsAuthenticated,
    )
    paginate_by = 25
    paginate_by_param = 'page_size'
    max_paginate_by = 1000

class WatershedViewSet(DefaultsMixin, viewsets.ModelViewSet):
    """ API endpoint for Watershed CRUD operations
    """

    queryset = Watershed.objects.all()
    serializer_class = WatershedSerializer

class GIInstanceViewSet(DefaultsMixin, viewsets.ModelViewSet):
    """ API endpoint for GIInstance CRUD operations
    """

    queryset = GIInstance.objects.all()
    serializer_class = GIInstanceSerializer

class HumanPrefImageViewSet(DefaultsMixin, viewsets.ModelViewSet):
    """ API endpoint for HumanPrefImage CRUD operations
    """

    queryset = HumanPrefImage.objects.all()
    serializer_class = HumanPrefImageSerializer

class GIVegGrowthStateViewSet(DefaultsMixin, viewsets.ModelViewSet):
    """ API endpoint for GIVegGrowthState CRUD operations
    """

    queryset = GIVegGrowthState.objects.all()
    serializer_class = GIVegGrowthStateSerializer

class TemplatesForEcoClimateViewSet(DefaultsMixin, viewsets.ModelViewSet):
    """ API endpoint for TemplatesForEcoClimate CRUD operations
    """

    queryset = TemplatesForEcoClimate.objects.all()
    serializer_class = TemplatesForEcoClimateSerializer

class GITemplateViewSet(DefaultsMixin, viewsets.ModelViewSet):
    """ API endpoint for GITemplate CRUD operations
    """

    queryset = GITemplate.objects.all()
    serializer_class = GITemplateSerializer

class GIElementViewSet(DefaultsMixin, viewsets.ModelViewSet):
    """ API endpoint for GIElement CRUD operations
    """

    queryset = GIElement.objects.all()
    serializer_class = GIElementSerializer

class RHESSysStratumTypeViewSet(DefaultsMixin, viewsets.ModelViewSet):
    """ API endpoint for RHESSysStratumType CRUD operations
    """

    queryset = RHESSysStratumType.objects.all()
    serializer_class = RHESSysStratumTypeSerializer

class RHESSysSoilTypeViewSet(DefaultsMixin, viewsets.ModelViewSet):
    """ API endpoint for RHESSysSoilType CRUD operations
    """

    queryset = RHESSysSoilType.objects.all()
    serializer_class = RHESSysSoilTypeSerializer

class Representation2DViewSet(DefaultsMixin, viewsets.ModelViewSet):
    """ API endpoint for Representation2D CRUD operations
    """

    queryset = Representation2D.objects.all()
    serializer_class = Representation2DSerializer

class Representation3DViewSet(DefaultsMixin, viewsets.ModelViewSet):
    """ API endpoint for Representation3D CRUD operations
    """

    queryset = Representation3D.objects.all()
    serializer_class = Representation3DSerializer
