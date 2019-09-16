// @ts-ignore
declare module "@capacitor/core" {
  interface PluginRegistry {
    IsDebug: IsDebugPlugin;
  }
}

export interface IsDebugPlugin {
  check(): Promise<{value: boolean}>;
}
