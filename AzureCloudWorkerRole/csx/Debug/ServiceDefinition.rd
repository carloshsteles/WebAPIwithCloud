<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="AzureCloudWorkerRole" generation="1" functional="0" release="0" Id="1fc430c2-000a-416c-91b4-30bd00814394" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="AzureCloudWorkerRoleGroup" generation="1" functional="0" release="0">
      <settings>
        <aCS name="Consumidor:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/AzureCloudWorkerRole/AzureCloudWorkerRoleGroup/MapConsumidor:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="ConsumidorInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/AzureCloudWorkerRole/AzureCloudWorkerRoleGroup/MapConsumidorInstances" />
          </maps>
        </aCS>
        <aCS name="Produtor:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/AzureCloudWorkerRole/AzureCloudWorkerRoleGroup/MapProdutor:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="ProdutorInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/AzureCloudWorkerRole/AzureCloudWorkerRoleGroup/MapProdutorInstances" />
          </maps>
        </aCS>
      </settings>
      <maps>
        <map name="MapConsumidor:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/AzureCloudWorkerRole/AzureCloudWorkerRoleGroup/Consumidor/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapConsumidorInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/AzureCloudWorkerRole/AzureCloudWorkerRoleGroup/ConsumidorInstances" />
          </setting>
        </map>
        <map name="MapProdutor:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/AzureCloudWorkerRole/AzureCloudWorkerRoleGroup/Produtor/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapProdutorInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/AzureCloudWorkerRole/AzureCloudWorkerRoleGroup/ProdutorInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="Consumidor" generation="1" functional="0" release="0" software="c:\Users\carlo\documents\visual studio 2017\Projects\WebAPI\AzureCloudWorkerRole\csx\Debug\roles\Consumidor" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaWorkerHost.exe " memIndex="-1" hostingEnvironment="consoleroleadmin" hostingEnvironmentVersion="2">
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;Consumidor&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;Consumidor&quot; /&gt;&lt;r name=&quot;Produtor&quot; /&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/AzureCloudWorkerRole/AzureCloudWorkerRoleGroup/ConsumidorInstances" />
            <sCSPolicyUpdateDomainMoniker name="/AzureCloudWorkerRole/AzureCloudWorkerRoleGroup/ConsumidorUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/AzureCloudWorkerRole/AzureCloudWorkerRoleGroup/ConsumidorFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
        <groupHascomponents>
          <role name="Produtor" generation="1" functional="0" release="0" software="c:\Users\carlo\documents\visual studio 2017\Projects\WebAPI\AzureCloudWorkerRole\csx\Debug\roles\Produtor" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaWorkerHost.exe " memIndex="-1" hostingEnvironment="consoleroleadmin" hostingEnvironmentVersion="2">
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;Produtor&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;Consumidor&quot; /&gt;&lt;r name=&quot;Produtor&quot; /&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/AzureCloudWorkerRole/AzureCloudWorkerRoleGroup/ProdutorInstances" />
            <sCSPolicyUpdateDomainMoniker name="/AzureCloudWorkerRole/AzureCloudWorkerRoleGroup/ProdutorUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/AzureCloudWorkerRole/AzureCloudWorkerRoleGroup/ProdutorFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="ProdutorUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyUpdateDomain name="ConsumidorUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="ConsumidorFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyFaultDomain name="ProdutorFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="ConsumidorInstances" defaultPolicy="[1,1,1]" />
        <sCSPolicyID name="ProdutorInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
</serviceModel>