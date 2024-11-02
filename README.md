<img src="https://pbs.twimg.com/media/GbJYReYWQAA9FHo?format=jpg&name=large" alt="Alt Text" width="900">

You will probably receive an error for SIP to be disbled for yabai to work, find the steps to resolve that issue below

## For Apple Silicon Macs

1. Shut down your Mac
2. Press and hold the power button until "Loading startup options" appears2
3. Click Options, then Continue
4. Open Terminal from Utilities menu
5. Run the following command:

```bash
csrutil disable --with kext --with dtrace --with basesystem
```

6. Reboot your Mac
7. After rebooting, open Terminal and run:

```bash
sudo nvram boot-args=-arm64e_preview_abi
```

8. Reboot again
