
# XPrize Spark Plugin

## About

The XPrize Spark Plugin serves as an example of how to leverage the Vatom Spark SDK and Spark Engine to build a plugin

## Installation

Install dependencies:

```bash
yarn
```

Specify client id & secret in .env:

```bash
PORT=8081
CLIENT_ID=
CLIENT_SECRET=
```

## Local Development

```
yarn build
yarn start
```

Or, using hot reloading (recommended)...

```bash
# in two terminals
yarn build:watch
yarn start:watch
```

## Documentation

For a full description of the Spark Plugin, please see https://github.com/VatomInc/spark-sdk

### Descriptor

#### Message Facades

The XPrize plugin created 3 custom message facades:

* v.room.topic - A special 'Topic' for discussion
* v.room.poll - A poll
* v.room.score - A way to score proposals that were submitted

#### Modal Facades

The XPrize plugin created one custom modal facades:

* message.new for v.room.topic


### Rendering Events


### System Events

