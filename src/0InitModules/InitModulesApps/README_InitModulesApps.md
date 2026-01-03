
# Initialization Project `InitModulesApps`

See also [repository's README.md](../../../README.md) ([on GitHub](https://github.com/ajgorhoe/IGLib.modules.IGLibApps/blob/main/README.md)) and [this file on GitHub](https://github.com/ajgorhoe/IGLib.modules.IGLibApps/blob/main/src/0InitModules/InitModulesApps/README_InitModulesApps.md).

## About `InitModulesApps`

This project, when "built" in an [IDE](https://en.wikipedia.org/wiki/Integrated_development_environment) like `Visual Studio` or via `MSBuild` or `dotnet tool`, performs initialization for software projects in this repository, e.g. by cloning dependency repositories containing referenced projects (other IGLib or external repositories).

Specifically, this project performs cloning (or updating, if already cloned) of basic source project dependencies for projects in the IGLibApps repository:

* It runs the `PowerShell` script [/scripts/UpdateDependencyRepos.ps1](../../../scripts/UpdateDependencyRepos.ps1)
  * This clones/updates basic IGLib's library repositories, such as `IGLibCore`, `IGLibGraphics3D`, `IGLibScripting`, etc. (see the script file for precise information)

## General Information on Initialization Projects in IGLib

Projects that need such initialization need to reference this project as normal project reference but with two additional attributes, `ReferenceOutputAssembly="false"` and `PrivateAssets="All"` (in the `.csproj` file, within an `<ItemGroup>`, within `<ProjectReference Include="..." ReferenceOutputAssembly="false" PrivateAssets="All" />`). For example:

~~~xml
<Project Sdk="Microsoft.NET.Sdk">
  ...
  <ItemGroup>
    <ProjectReference Include="..\..\src\0InitModules\InitModulesApps\InitModulesApps.csproj"      
      ReferenceOutputAssembly="false" PrivateAssets="All" />
  </ItemGroup>
  ...
</Project>
~~~




