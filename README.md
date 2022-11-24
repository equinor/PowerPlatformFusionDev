# PowerPlatformFusionDev

Template for citizen and fusion development that contains some useful documentation and resources for Power Platform in Equinor.

## Why

* Provide a basic framework for teams that includes both citizen and professional developers.

* Leverage professional development best practices with the least amount of [cognitive load](https://en.wikipedia.org/wiki/Cognitive_load) for both citizen and professional developers.
* Help mitigate [technical debt](https://en.wikipedia.org/wiki/Technical_debt) and prepare for smoother operation and maintenance by developers not included from the start of the project.
* The development and maintenance of this repository will also help ensure compliance to Equinor governance.

## What

Primarily this repository contains examples and configurations that align with Equinor development governance and strategies. It will never be a complete framework suitable for any solution, but it can help get your team started on projects.

## Content

* Workflows (CI/CD) - [.github/workflows](.github/workflows/)
* Devcontainer / codespace - [.devcontainer](.devcontainer/)
* Development documentation examples - [docs](docs/)
* Coding standard example [docs/codingstandards.md](docs/codingstandards.md)
* Self Assessment - [docs/selfassessment.md](docs/selfassessment.md)

Both development documentation examples and the self assessment also cover topics which is required for handover of operations to the Center for Enablement operations team.

## Workflows

Actions for exporting power apps solution and releasing a solution to an environment
> Note: This requires giving application users in the dev, build, test and production environments for an azure app registration.

## Codespace

A codespace including a set of useful extensions for Power Platform development with VSCode as well as Power Platform CLI tooling.

See the vscode extension section in [.devcontainer/devcontainer.json](.devcontainer/devcontainer.json) for a list of extensions installed.

## Coding standards

Provide an example coding standard for low code such as [PowerFX](https://learn.microsoft.com/en-us/power-platform/power-fx/overview), but also naming conventions to be used for components in dataverse solutions, Power Automate and so on.

Highlight the importance of establishing common conventions.

## Development documentation

Example diagrams and documentation templates which cover topics specifically for Power Platform in a format that is familiar to professional developers, yet understandable by citizen developers and project stakeholders.

The examples only **supplement** and translate some aspects in the [architecture contract](https://github.com/equinor/architecturecontract), and should **NOT** be considered an alternative to architecture contract.

## Self assessment

**Supplement** the [self assessment questions for architecture contract](https://github.com/equinor/architecturecontract/blob/master/template/ac_topics.md#self-assessment-questions-for-architecture-contracts) with questions more suited for the power platform.
The self assessment should **NOT** be considered an alternative to assessments for the standard architecture contract.
