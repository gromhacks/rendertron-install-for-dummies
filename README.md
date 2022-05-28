# Rendertron Install for Dummies

This is just a simple repository of how to setup and install "Rendertron (by Google)"

## What is Rendertron

[Github Link](https://github.com/GoogleChrome/rendertron)

To qoute their github page:

"Rendertron is designed to enable your Progressive Web App (PWA) to serve the correct content to any bot that doesn't render or execute JavaScript. Rendertron runs as a standalone HTTP server. Rendertron renders requested pages using Headless Chrome, auto-detecting when your PWA has completed loading and serializes the response back to the original request. To use Rendertron, your application configures middleware to determine whether to proxy a request to Rendertron. Rendertron is compatible with all client side technologies, including web components.

  Demo endpoint

  A demo Rendertron service is available at https://render-tron.appspot.com/. It is not designed to be used as a production endpoint. You can use it, but there are no uptime guarantees."
  
What this really means for Bug Bounty Hunters and Pentesters is a way to inline render/compile javascript with command line tools.

## Quick Setup

`git clone https://github.com/gromhacks/rendertron-install-for-dummies.git`
`cd rendertron-install-for-dummies`
`chmod +x install.sh`
`./install.sh`


## How to Create a Rendertron Server in Digital Ocean or with a VPS Provider

1. Create a droplet with the following specs

1 GB Memory / 1 Intel vCPUs / 25 GB Disk / SFO3 - Ubuntu x64        <-- This is all you really need, don't spend to much money.

2. SSH into the instance and run apt update and upgrade

`apt update -y && apt upgrade -y`

3. Make tools directory

`mkdir tools`

4. Install Google Chrome for x64 linux.

`wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb`

`apt install ./google-chrome-stable_current_amd64.deb -y`

5. Install NPM

`apt install npm -y`

6. Install Rendertron

`git clone https://github.com/GoogleChrome/rendertron.git`

`cd rendertron`
`npm install`
`npm run build`

7. Run Rendertron

`npm run start`

8. Test Rendertron - 143.110.146.105


`curl http://<rendertron-server-ip>:3000/render/`


9. Shutdown Rendertron

`poweroff`
