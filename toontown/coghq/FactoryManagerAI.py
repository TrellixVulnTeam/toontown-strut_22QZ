from direct.directnotify import DirectNotifyGlobal
from . import DistributedFatalFactoryAI
from . import DistributedFactoryAI
from toontown.toonbase import ToontownGlobals
from direct.showbase import DirectObject

class FactoryManagerAI(DirectObject.DirectObject):
    notify = DirectNotifyGlobal.directNotify.newCategory('FactoryManagerAI')
    factoryId = None

    def __init__(self, air):
        DirectObject.DirectObject.__init__(self)
        self.air = air

    def getDoId(self):
        return 0

    def createFactory(self, factoryId, entranceId, players):
        factoryZone = self.air.allocateZone()
        if FactoryManagerAI.factoryId is not None:
            factoryId = FactoryManagerAI.factoryId
        if entranceId == 2:
            factory = DistributedFatalFactoryAI.DistributedFatalFactoryAI(self.air, factoryId, factoryZone, entranceId, players)
        else:
            factory = DistributedFactoryAI.DistributedFactoryAI(self.air, factoryId, factoryZone, entranceId, players)
        try:
            factory.generateWithRequired(factoryZone)
        except:
            print("Returning to sellbot front entrance due to bug...")
            factoryZone = 22000
            factory.generateWithRequired(factoryZone)
        return factoryZone
