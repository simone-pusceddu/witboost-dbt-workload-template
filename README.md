<p align="center">
    <a href="https://www.agilelab.it/witboost">
        <img src="docs/img/WITBOOST_LOGO.svg" alt="witboost" width=600 >
    </a>
</p>

Designed by [Agile Lab](https://www.agilelab.it/), Witboost is a versatile platform that addresses a wide range of sophisticated data engineering challenges. It enables businesses to discover, enhance, and productize their data, fostering the creation of automated data platforms that adhere to the highest standards of data governance. Want to know more about Witboost? Check it out [here](https://www.agilelab.it/witboost) or [contact us!](https://www.agilelab.it/contacts)

This repository is part of our [Starter Kit](https://github.com/agile-lab-dev/witboost-starter-kit) meant to showcase Witboost's integration capabilities and provide a "batteries-included" product.

# DBT Workload Template

- [Overview](#overview)
- [Usage](#usage)


## Overview

Use this template to automatically create a Workload based on a dbt project that can be referenced from other components inside the platform.

This component does not provision any resources or infrastructure, and as such can be used without any Specific Provisioner.


### What's a Template?

A Template is a tool that helps create components inside a Data Mesh. Templates help establish a standard across the organization. This standard leads to easier understanding, management and maintenance of components. Templates provide a predefined structure so that developers don't have to start from scratch each time, which leads to faster development and allows them to focus on other aspects, such as testing and business logic.

For more information, please refer to the [official documentation](https://docs.witboost.agilelab.it/docs/p1_user/p6_advanced/p6_1_templates/#getting-started).


### What's a Workload?

Workload refers to any data processing step (ETL, job, transformation etc.) that is applied to data in a Data Product. Workloads can pull data from sources external to the Data Mesh or from an Output Port of a different Data Product or from Storage Areas inside the same Data Product, and persist it for further processing or serving.


### DBT

dbt (Data Build Tool) is a transformation tool that enables data analysts and engineers to transform, test, and document their data inside their data warehouse more effectively. It allows you to write transformations as SQL code, maintaining the logic in a version-controlled environment. With dbt, you can build transformation pipelines that consist of simple SELECT statements and views, creating a chain of transformations that shape your raw data into a useful form for analysis. Besides, dbt also supports data testing, ensuring the validity and quality of the transformed data, and it can automatically generate documentation, making it easier for teams to understand their datasets.

Learn more about it on the [official website](https://www.getdbt.com/).


## Usage

To get information on how to use this template, refer to this [document](./docs/index.md).


### Component Testing

To verify the component before deploying it along with the Data Product, the component needs to be tested against a CUE Policy defined for [DBT Workload](./policies/dbt.cue). This policy needs to be defined inside the **Governance** section of the Witboost Platform.

For more information, please refer to the [official documentation](https://docs.witboost.agilelab.it/docs/p1_user/p5_managing_policies/p5_1_overview).


## Artifacts

This project uses Python `setuptools` and `build` for packaging. Build artifacts with:

```python
python -m build --wheel
```

If you wish to change the default version, you can do so by going inside the `version.py` file and change it to suit your needs.

## License

This project is available under the [Apache License, Version 2.0](https://opensource.org/licenses/Apache-2.0); see [LICENSE](LICENSE) for full details.


## About us

<p align="center">
    <a href="https://www.agilelab.it">
        <img src="docs/img/agilelab_logo.jpg" alt="Agile Lab" width=600>
    </a>
</p>

Agile Lab creates value for its Clients in data-intensive environments through customizable solutions to establish performance driven processes, sustainable architectures, and automated platforms driven by data governance best practices.

Since 2014 we have implemented 100+ successful Elite Data Engineering initiatives and used that experience to create Witboost: a technology-agnostic, modular platform, that empowers modern enterprises to discover, elevate and productize their data both in traditional environments and on fully compliant Data mesh architectures.

[Contact us](https://www.agilelab.it/contacts) or follow us on:
- [LinkedIn](https://www.linkedin.com/company/agile-lab/)
- [Instagram](https://www.instagram.com/agilelab_official/)
- [YouTube](https://www.youtube.com/channel/UCTWdhr7_4JmZIpZFhMdLzAA)
- [Twitter](https://twitter.com/agile__lab)
