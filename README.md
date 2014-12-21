# docker

Provides some Dockerfiles.
Based on the work of https://github.com/ueshin/docker

## ubuntu-java8

Installed Java8 on ubuntu base image.

### build

```bash
docker build -t ubuntu-java8 ubuntu-java8
```

## spark

Built Apache Spark on ubuntu-java8.

### build

```bash
docker build -t spark spark
```

Build ubuntu-java8 in advance.

## spark-1.2

Build Apache Spark 1.2.x on ubuntu-java8.

### build

```bash
docker build -t spark:1.2.0 spark-1.2
```

Build ubuntu-java8 in advance.

## spark-1.1

Build Apache Spark 1.1.x on ubuntu-java8.

### build

```bash
docker build -t spark:1.1.1 spark-1.1
```

Build ubuntu-java8 in advance.

## spark-1.0

Build Apache Spark 1.0.x on ubuntu-java8.

### build

```bash
docker build -t spark:1.0.2 spark-1.0
```

Build ubuntu-java8 in advance.

## spark-standalone

Build 1 Worker / Master standalone Spark cluster

### build

```bash
docker build -t spark-standalone:1.2.0 spark-standalone
```

Build spark-1.2 in advance.
