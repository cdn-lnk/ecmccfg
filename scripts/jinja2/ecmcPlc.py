import re
from ecmcYamlHandler import *
from ecmcJinja2 import JinjaTemplate


class EcmcPlc(YamlHandler):
    def __init__(self, plcconfig, jinjatemplatedir, jinjatemplate):
        super().__init__()
        if jinjatemplate is None:
            jinjatemplate = 'plc.jinja2'
        self.jt = JinjaTemplate(jinjatemplatedir, jinjatemplate)
        self.hasPlcFile = False
        self.loadYamlData(plcconfig)
        self.sanityCheckPlc()
        self.process()

    def sanityCheckPlc(self):
        self.checkForKey('plc')
        self.checkForFile()
        self.checkForVariables()

    def process(self):
        if self.hasPlcFile:
            self.loadPlcFile()
        if self.hasVariables:
            self.jt.render(self.yamlData)
            self.jt.setTemplate(self.jt.product)
        self.jt.render(self.yamlData)

    def checkForFile(self):
        # if the config contains a 'file', set the flag to trigger loading {{ plc.file }}
        self.hasPlcFile = self.checkForKey('file', self.yamlData['plc']) and self.yamlData['plc']['file'] is not None

    def loadPlcFile(self):
        # replace all 'plc.code' with the content of {{ plc.file }}
        self.yamlData['plc']['code'] = self.readPlcFile(self.yamlData['plc']['file'])

    @staticmethod
    def readPlcFile(filename):
        code = []
        with open(filename, "r") as f:
            for line in f:
                line = line.strip()  # strip new lines
                if len(line) == 0:  # remove empty lines
                    continue
                x = re.findall("^#.*", line)  # remove commented lines
                if x:
                    continue
                code.append(line)  # append whatever is left
        return code

if __name__ == '__main__':
    plc = EcmcPlc('./test/testPlc.yaml', './plc.jinja2')
    print(yaml.dump(plc.yamlData))
