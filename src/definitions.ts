declare module "@capacitor/core" {
  interface PluginRegistry {
    IsDebug: IsDebugPlugin;
  }
}

export interface IsDebugPlugin {
  echo(options: { value: string }): Promise<{value: string}>;
}
