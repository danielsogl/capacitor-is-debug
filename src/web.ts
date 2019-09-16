import { WebPlugin } from '@capacitor/core';
import { IsDebugPlugin } from './definitions';

export class IsDebugWeb extends WebPlugin implements IsDebugPlugin {
  constructor() {
    super({
      name: 'IsDebug',
      platforms: ['web']
    });
  }

  async echo(options: { value: string }): Promise<{value: string}> {
    console.log('ECHO', options);
    return options;
  }
}

const IsDebug = new IsDebugWeb();

export { IsDebug };

import { registerWebPlugin } from '@capacitor/core';
registerWebPlugin(IsDebug);
