{%- set domainNameNormalized = values.domain | replace(r/domain:| |-/, "") %}
{%- set dataProductNameNormalized = values.dataproduct.split(".")[1] | replace(r/ |-/g, "") %}
{%- set componentNameNormalized = values.name.split(" ") | join("") | lower %}

## Component Information

| Field name               | Example value                                                       |
|:-------------------------|:--------------------------------------------------------------------|
| **Name**                 | ${{ values.name }}                                                  |
| **Fully Qualified Name** | ${{ values.fullyQualifiedName }}                                    |
| **Description**          | ${{ values.description }}                                           |
| **Domain**               | ${{ values.domain }}                                                |
| **Data Product**         | ${{ values.dataproduct }}                                           |
| ***Identifier***         | ${{ values.identifier }}                                            |
| ***Development Group***  | ${{ values.developmentGroup }}                                      |
 {%- if values.dependsOn  | length > 0  %}                                                      
| **Dependencies**         | {%- for i in values.dependsOn  %} -${{ i }}<br/><br/>
{%- endfor  %} |
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
| **Cloud Storage Details** | {%- for key, value in values.cloudStorage  %} ${{ key }}: ${{ value }}<br/><br/> {%- endfor  %}                                                                   |
| **Secret Details**        | {%- for key, value in values.secrets  %} ${{ key }}: ${{ value }}<br/><br/> {%- endfor  %}                                                                        |
