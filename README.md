# Global Secure Access Troubleshooting Tool (GSATool)

## Overview 
Troubleshooting Global Secure Access can be challenging due to its multiple components, often requiring significant time, effort and local admin permissions. However, with the Global Secure Access Troubleshooting Tool (GSATool), diagnosing and resolving issues has never been easier. The GSATool PowerShell is a comprehensive tool that performs over 50 different tests to help identify and resolve the most common Global Secure Access issues across all components, including Microsoft Entra Private Access, Microsoft Entra Internet Access, and Microsoft Entra Internet Access for Microsoft Services. By leveraging GSATool, organizations can significantly reduce troubleshooting time, enhance operational efficiency. 

## Prerequisites 
You can run GSATool as a standard user without requiring the installation of any PowerShell modules. However, to validate the GSA cloud service configuration, you need to use an account with both `NetworkAccess.Read.All` and `Application.Read.All` permissions.

## Running the tool 
Download and run the `GSATool.ps1` script from [this](https://github.com/microsoft/GSATool/archive/refs/heads/main.zip) Github repo

## Submit feedback 
You can submit feedback, suggestions, or comments at https://aka.ms/GSAToolFeedback.  

## Contributing
This project welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit [Contributor License Agreements](https://cla.opensource.microsoft.com).

When you submit a pull request, a CLA bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., status check, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

## Trademarks
This project may contain trademarks or logos for projects, products, or services. Authorized use of Microsoft
trademarks or logos is subject to and must follow
[Microsoft's Trademark & Brand Guidelines](https://www.microsoft.com/legal/intellectualproperty/trademarks/usage/general).
Use of Microsoft trademarks or logos in modified versions of this project must not cause confusion or imply Microsoft sponsorship.
Any use of third-party trademarks or logos are subject to those third-party's policies.

## User experience
![Alt text](/media/GSATool.png "GSATool")

## What assessments does GSATool conduct? 

### 1- Troubleshoot Entra Microsoft Traffic 
- Checking GSA client services 
  - Tunneling Service 
  - Management Service 
  - Policy Retrieval Service 
  - GSA Driver Service 
- Checking if the device is connected to Entra ID 
- Checking Microsoft Traffic Profile 
  - Testing if Forwarding profile key exists 
  - Testing if forwarding profile key value is not empty 
  - Private forwarding profile configuration has retrieved 
- Checking connectivity to Microsoft Traffic Edge 
  - Testing connection to the primary Private Access Edge 
  - If failed, testing connection to the secondary Private Access Edge 
- Checking connectivity to Microsoft Traffic health endpoint 
- Checking Global Secure Access Activation Status 
- Checking Microsoft Traffic forwarding profile enablement 
- Checking user assignments to Microsoft Traffic forwarding profile 
  - Testing if assignment required for Microsoft Traffic forwarding profile 
  - If so, testing if user is assigned directly to Microsoft Traffic forwarding profile 
  - If not, test if user is a member of a group assigned to Microsoft Traffic forwarding profile 

#### 2- Troubleshoot Entra Internet Access 
- Checking GSA client services 
  - Tunneling Service 
  - Management Service 
  - Policy Retrieval Service 
  - GSA Driver Service 
- Checking if the device is connected to Entra ID 
- Checking Internet Access Profile 
  - Testing if Forwarding profile key exists 
  - Testing if forwarding profile key value is not empty 
  - Private forwarding profile configuration has retrieved 
- Checking connectivity to Internet Access Edge 
  - Testing connection to the primary Private Access Edge 
  - If failed, testing connection to the secondary Private Access Edge 
- Checking connectivity to Internet Access health endpoint 
- Checking Global Secure Access Activation Status 
- Checking Internet forwarding profile enablement 
- Checking user assignments to Internet Access forwarding profile 
  - Testing if assignment required for Internet Access forwarding profile 
  - If so, testing if user is assigned directly to Internet Access forwarding profile 
  - If not, test if user is a member of a group assigned to Internet Access forwarding profile 

### 3- Troubleshoot Entra Private Access
- Checking GSA client services 
  - Tunneling Service 
  - Management Service 
  - Policy Retrieval Service 
  - GSA Driver Service
- Checking Private Access registry key settings 
  - Testing PA enablement 
- Checking if the device is connected to Entra ID 
- Checking Private Access Profile 
  - Testing if Forwarding profile key exists 
  - Testing if forwarding profile key value is not empty 
  - Private forwarding profile configuration has retrieved 
- Checking connectivity to Private Access Edge 
  - Testing connection to the primary Private Access Edge 
  - If failed, testing connection to the secondary Private Access Edge 
- Checking connectivity to Private Access health endpoint 
- Checking GSA client forwarding profile configuration 
  - Testing if there is rule configured and retrieved for the provided FQDNorIP, port, protocol. If exists, the tool shows the configured Rule ID, App ID 
- Checking Global Secure Access Activation Status 
- Checking Private forwarding profile enablement 
- Checking user assignments to Private Access forwarding profile 
  - Testing if assignment required for Private Access forwarding profile 
  - If so, testing if user is assigned directly to Private Access forwarding profile 
  - If not, test if user is a member of a group assigned to Private Access forwarding profile 
- Checking Private Access Application configuration 
  - Testing the access with Global Secure Access client is enabled 
  - Testing if Private Access application is enabled 
  - Testing if assignment required for Private Access application 
  - If so, testing if user is assigned directly to Private Access application 
  - If not, testing if user is a member of a group assigned to Private Access application 
- Checking tunnel establishing 
  - Testing if connection has established to SSE edge with the provided port and protocol. If so, the tool retrieves syntactic address. 
  - Testing the internal DNS record for the target resource. If found, the tool retrieves internal addresses. 

## Frequently asked questions
### Does the script change anything?
No, It just retrieves data.

### Does the script require any PowerShell module to be installed?
No, the script does not require any PowerShell module.

### Will the tool fix the issue when it detects it?
No, it identifies the issue and suggests recommended steps to fix it.

