# Sunra plugin

Generate images, video, audio and 3D models with [Sunra](https://sunra.ai) from Cursor, Claude and other AI apps. This plugin connects your agent to the Sunra MCP server at `https://mcp.sunra.ai`.

## How it works

The plugin only registers the Sunra MCP server with your agent. It contains no scripts, hooks or binaries, and nothing runs on your machine. When you ask your agent to make something, the agent sends your prompt, and any reference files you choose to provide, to `https://mcp.sunra.ai`.

The first time you use it, you sign in to Sunra in your browser and click Allow. No API key is needed, and this repository holds no credentials. Every app you allow is listed under Connected apps in your Sunra account, where you can disconnect it at any time.

Generations use the same credits as the Sunra web app, from the same account.

## Usage

After you install the plugin and sign in, ask your agent to make something with Sunra. For example:

- "Generate an image of a red fox in a snowy forest with Sunra."
- "Make a short video of ocean waves at sunset with Sunra."
- "How many Sunra credits would a 10-second video cost?"
- "Check my Sunra credit balance."

## Requirements

- A [Sunra](https://sunra.ai) account
- Internet access

## Support

- Documentation: https://sunra.ai/mcp
- Email: support@sunra.ai

## License

This repository is licensed under the [MIT License](./LICENSE), except as stated under "Trademarks and brand assets" below. Copyright (c) 2026 Second Enlightenment Global Private Limited.

## Trademarks and brand assets

"Sunra" and the Sunra logo are trademarks of Sunra (Second Enlightenment Global Private Limited) and/or its affiliates. The Sunra name, the logo and the brand files in [`assets/`](./assets) are **not** licensed under the MIT License, and the MIT License grants no rights in them. They are included only so that this plugin can be displayed in plugin marketplaces and directories. All rights in them are reserved.

You may use the name "Sunra" to accurately describe this plugin or the Sunra service, for example "works with Sunra" or "a fork of the Sunra plugin". If you fork or redistribute this plugin, remove the Sunra logo, give your version a name of its own, and do not suggest that it is made, endorsed or supported by Sunra. For any other use, contact support@sunra.ai.

## Service terms

This license covers the files in this repository only. Use of the Sunra service and API, and the content you generate with them, is governed by the [Sunra Terms of Service](https://sunra.ai/terms) and [Privacy Policy](https://sunra.ai/privacy).
