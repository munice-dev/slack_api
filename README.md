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
    {:slack_api, "~> 1.2"}
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

just chat to channel, slack api [chat.postMessage](https://api.slack.com/methods/chat.postMessage)
```elixir
iex>bot_token = "xoxb-00000000000-0000000000-OOOOOOOOO"
iex>SlackAPI.req(%SlackAPI.Chat.PostMessage{
  token: bot_token,
  channel: "BBUNGBBUNG",
  text: "blahblah"
})
```

call slack api [apps.connections.open](https://api.slack.com/methods/apps.connections.open) (for socket mode)
```elixir
iex>app_token = "0000-00000000000-0000000000-OOOOOOOOO"
iex>SlackAPI.req(%SlackAPI.Apps.Connections.Open{token: app_token})
```



call slack api [users.info](https://api.slack.com/methods/users.info)
```elixir
iex>bot_token = "0000-00000000000-0000000000-OOOOOOOOO"
iex>SlackAPI.req(%SlackAPI.Users.Info{token: bot_token, user: "UOOOOOO"})
{:ok,
 %{
   "ok" => true,
   "user" => %{
     "color" => "000000",
     "deleted" => false,
     "id" => "UXXXXXXXXX",
     "is_admin" => true,
     "is_app_user" => false,
     "is_bot" => false,
     "is_email_confirmed" => true,
     "is_owner" => true,
     "is_primary_owner" => true,
     "is_restricted" => false,
     "is_ultra_restricted" => false,
     "name" => "user123",
     "profile" => %{
       "avatar_hash" => "xxxxxxxxxxxx",
       "display_name" => "",
       "display_name_normalized" => "",
       "fields" => nil,
       "first_name" => "User",
       "image_192" => "https://example.com/default_avatar.jpg",
       "image_24" => "https://example.com/default_avatar.jpg",
       "image_32" => "https://example.com/default_avatar.jpg",
       "image_48" => "https://example.com/default_avatar.jpg",
       "image_512" => "https://example.com/default_avatar.jpg",
       "image_72" => "https://example.com/default_avatar.jpg",
       "last_name" => "",
       "phone" => "",
       "real_name" => "User Name",
       "real_name_normalized" => "User Name",
       "skype" => "",
       "status_emoji" => "",
       "status_emoji_display_info" => [],
       "status_expiration" => 0,
       "status_text" => "",
       "status_text_canonical" => "",
       "team" => "TXXXXXXXXX",
       "title" => ""
     },
     "real_name" => "User Name",
     "team_id" => "TXXXXXXXXX",
     "tz" => "Asia/Seoul",
     "tz_label" => "Korea Standard Time",
     "tz_offset" => 32400,
     "updated" => 0,
     "who_can_share_contact_card" => "EVERYONE"
   }
 }}
```

