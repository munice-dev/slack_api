# SlackAPI

[![Hex.pm Version](https://img.shields.io/hexpm/v/slack_api.svg)](https://hex.pm/packages/slack_api)
 

This project is designed to simplify the use of the Slack API by downloading API JSON data from the Slack API documentation([ex_slack_api_docs](https://github.com/inooid/ex_slack_api_docs)) and generating Elixir modules for each API. 

This project reduces the friction often encountered when working with the Slack API, enabling developers to implement features more quickly and effectively.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `slack_api` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:slack_api, "~> 1.0.0"}
  ]
end
```

## Update API
Run the following command to generate the Slack API documentation in JSON format, 

which will be downloaded and created in the `docs` directory.

```bash
$ mix slack_api_docs.gen.json docs
```

To generate Elixir API modules based on the JSON file, execute the following command:
```bash
$ mix slack_api.gen
```

## Usage

just chat to channel
```elixir
token = "xoxb-00000000000-0000000000-OOOOOOOOO"
SlackAPI.req(%SlackAPI.Chat.PostMessage{
  token: token,
  channel: "BBUNGBBUNG",
  text: "blahblah"
})
```

call apps.conversations.open api (for socket mode)
```elixir
SlackAPI.req(%SlackAPI.Apps.Connections.Open{token: token})
```


