# Solution architecture diagrams

Visualized architecture is a useful aid in collaboration and documentation.

## C4 Model

*The C4 model is a lean graphical notation technique for modelling the architecture of software systems.* ([Wikipedia](https://en.wikipedia.org/wiki/C4_model))

Context, Container, Component & Code

Read more about C4 at [c4model.com](https://c4model.com/)

![abstractions](https://c4model.com/img/abstractions.png)

### Relevance in citizen and fusion development

#### Context diagram

Valuable for

* Citizen developers
* Professional developers
* End users
* Product owners
* Stakeholders

#### Container diagram

Valuable for

* citizen developers
* professional developers

#### Component diagram

Valuable for

* Seasoned citizen developers
* professional developers

### Code diagram

Code diagrams are usually redundant and not recommended to include in documentation, but can still be useful as a tool in workshops.

Valuable for:

* Seasoned citizen developers
* Professional developers

### Tools

The repository includes some examples, the Plant UML extension is included in the repository codespace/devcontainer for generating image files from the `.puml` files
> Plant UML is based on [Unified Modeling Language (UML)](https://en.wikipedia.org/wiki/Unified_Modeling_Language) is a modeling language that provides standards for software system design.

#### PlantUML example

```js
@startuml Canvas App And Power BI Dashboard - Context
title Power Platform Canvas App and Power BI report connected to internal API

!define FONTAWESOME https://raw.githubusercontent.com/tupadr3/plantuml-icon-font-sprites/master/font-awesome-5

!include https://raw.githubusercontent.com/plantuml-stdlib/C4-PlantUML/master/C4_Container.puml
!include FONTAWESOME/users.puml

Person(User, "Users", "Users in need of functionality", $sprite="users")
System(PowerBIService, "Power BI", "Power BI dashboard")
Container(DataverseSolution, "Solution", "Power Platform", "Canvas or model driven apps, automations, chatbots")
System(InternalService, "Internal Service", "Internally hosted APIs")
System_Ext(ExternalService, "External Service", "Externally hosted APIs")
System_Boundary(OnPremService, "On-premises service"){
    Container_Ext(SAP, "SAP", "Software system", "On-prem business data and management system")
}

Rel(User, DataverseSolution, "Uses", "Equinor | AAD")
Rel(User, PowerBIService, "Uses", "Equinor | AAD")
Rel(DataverseSolution, InternalService, "Requests", "user_impersonation scope")
Rel(DataverseSolution, ExternalService, "Requests")
Rel(PowerBIService, InternalService, "Reads")
Rel(User, SAP, "Uses on-premises", "RBAC")
Rel(InternalService, SAP, "Reads and writes data and user roles", "RBAC")

SHOW_FLOATING_LEGEND()
Lay_Distance(LEGEND(), DataverseSolution, 0)
@enduml
```

The above code will generate the following diagram:
![contextexample](../../assets/UML/Canvas%20App%20And%20Power%20BI%20Dashboard%20-%20Context.png)
|
There are a lot of more graphical alternatives to create diagrams such as [Miro](https://miro.com/), [FigJam](https://www.figma.com/figjam/) and many more, but the C4 model principles and concepts is the important part.
