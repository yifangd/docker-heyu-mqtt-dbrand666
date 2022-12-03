# A dockerized heyu to mqtt gateway

## About

The X10 to MQTT add-on provides a bidirectional gateway between an X10 CM11 or CM17A "Firecracker" serial interface and an MQTT server.

Key features:

- Translates incoming X10 commands received on a CM11a interface into MQTT commands.
- Monitors for incoming MQTT commands and sends them via a CM11a or CM17a as X10 commands.

## Installation

Copy  docker-compose.yml-template to docker-compose.yml and edit as needed.
Launch it with `docker compose up -d`.
View logs with `docker compose logs -f`

## Support

Please open an issue here on Github.

## License

MIT License

Copyright (c) 2021 Mark Motley

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.