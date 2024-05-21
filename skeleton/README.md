# ${{ values.name }}

- [Overview](#overview)
- [Usage](#usage)

## Overview

Use this component to automatically create a Workload based on a dbt project that can be referenced from other components inside the platform.

This component does not provision any resources or infrastructure, and as such can be used without any Specific Provisioner.

### What's a Workload?

Workload refers to any data processing step (ETL, job, transformation etc.) that is applied to data in a Data Product. Workloads can pull data from sources external to the Data Mesh or from an Output Port of a different Data Product or from Storage Areas inside the same Data Product, and persist it for further processing or serving.

### DBT

dbt (Data Build Tool) is a transformation tool that enables data analysts and engineers to transform, test, and document their data inside their data warehouse more effectively. It allows you to write transformations as SQL code, maintaining the logic in a version-controlled environment. With dbt, you can build transformation pipelines that consist of simple SELECT statements and views, creating a chain of transformations that shape your raw data into a useful form for analysis. Besides, dbt also supports data testing, ensuring the validity and quality of the transformed data, and it can automatically generate documentation, making it easier for teams to understand their datasets.

Learn more about it on the [official website](https://www.getdbt.com/).

## Usage

To get information about this component and how to use it, refer to this [document](./docs/index.md).