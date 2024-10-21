{%- set domainNameNormalized = values.domain | replace(r/domain:| |-/, "") %}
{%- set dataProductNameNormalized = values.dataproduct.split(".")[1] | replace(r/ |-/g, "") %}
{%- set componentNameNormalized = values.name.split(" ") | join("") | lower %}
{% set dataProductMajorVersion = values.identifier.split(".")[2] %}

## Component Information

| Field name               | Example value                                                                                                          |
|:-------------------------|:-----------------------------------------------------------------------------------------------------------------------|
| **Name**                 | ${{ values.name }}                                                                                                     |
| **Fully Qualified Name** | ${{ values.domainName }} - ${{ values.dataproductName }} - version ${{ dataProductMajorVersion }} - ${{ values.name }} |
| **Description**          | ${{ values.description }}                                                                                              |
| **Domain**               | ${{ values.domain }}                                                                                                   |
| **Data Product**         | ${{ values.dataproduct }}                                                                                              |
| ***Identifier***         | ${{ values.identifier }}                                                                                               |
| ***Development Group***  | ${{ values.developmentGroup }}                                                                                         |
| {%- if values.dependsOn  | length > 0  %}                                                                                                         |
| **Dependencies**         | {%- for i in values.dependsOn  %} -${{ i }}<br/><br/>                                                                  |
| {%- endfor  %}           |                                                                                                                        |

{%- else  %}
|**Dependencies**| [] |
{%- endif  %}


## DBT Project Details

| Field name                | Example value                                                                                                                                                     |
|:--------------------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Project Name**          | ${{ values.dbtProjectName }}                                                                                                                                      |
| **Git URL**               | > https://gitlab.com/AgileDMBSandbox/${{orgname}}/mesh.repository/${{ domainNameNormalized }}/${{ dataProductNameNormalized }}/${{ componentNameNormalized }}.git |
| **Storage Area**          | ${{ values.underlyingStorage }}                                                                                                                                   |
| **Database**              | ${{ values.database }}                                                                                                                                            |
| **Schema**                | ${{ values.schema }}                                                                                                                                              |
