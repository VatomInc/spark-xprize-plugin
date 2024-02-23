
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

The XPrize plugin creates 3 custom message facades:

* v.room.poll - A poll
* v.room.sketch - A way to present proposals that were submitted
* v.room.vote - A way to vote on a subset of leading proposals

#### Modal Facades

The XPrize plugin creates one custom modal facades:

* message.new for v.room.topic

### Rendering Events

The plugin renders the UI for each of custom message facades:

#### v.room.poll

The Poll contains a title, text area and is comprised of several decorations, namely score-style, poll-length, and hide-results that are built-in decorations offered by the platform

```js
{
    type: messageType,
    inputs: 
    [
        {
            type: "title",
            placeholder: "Ask a question",
        },
        {
            type: "text",
            placeholder: "Add some details...",
        },
        {
            type: "decorations",
            elements: [
                {
                    type: "score-style",
                    placeholder: "Style",
                    data: {
                        styles: [
                        "single-choice-poll",
                        "numbered-1-5",
                        "numbered-0-5",
                        "numbered-1-10",
                        "numbered-0-10",
                        "emojies",
                        "stars",
                        ],
                    },
                    value: "string",
                },
                {
                    type: "poll-length",
                    placeholder: "Scoring Window",
                    value: "number",
                },
                {
                    type: "hide-results",
                    placeholder: "Hide results until end",
                    value: "boolean",
                },
            ],
        },
    ],
};

```

#### v.room.sketch

The Sketch contains a title, text area and is comprised of several decorations, namely questions, start-time, and end-time that are built-in decorations offered by the platform

```js
{
    type: messageType,
    inputs: [
        {
            type: "title",
            placeholder: "Add a title",
        },
        {
            type: "text",
            placeholder: "Add some details...",
        },
        {
            type: "decorations",
            elements: [
                {
                    type: "questions",
                    placeholder: "Questions",
                    value: "number",
                },
                {
                    type: "start-time",
                    placeholder: "Scoring Starts",
                    value: "number",
                },
                {
                    type: "end-time",
                    placeholder: "Scoring Ends",
                    value: "number",
                },
            ],
        },
    ],
}

```

#### v.room.vote

The Vote contains a title, text area and is comprised of several decorations, namely sketches, start-time, and end-time that are built-in decorations offered by the platform

```js
{
    type: messageType,
    inputs: [
        {
            type: "title",
            placeholder: "Add a title",
        },
        {
            type: "text",
            placeholder: "Add some details...",
        },
        {
            type: "decorations",
            elements: [
                {
                    type: "sketches",
                    placeholder: "Sketches",
                    value: "number",
                },
                {
                    type: "start-time",
                    placeholder: "Vote Starts",
                    value: "number",
                },
                {
                    type: "end-time",
                    placeholder: "Vote Ends",
                    value: "number",
                },
            ],
        },
    ],
}
```

### System Events

