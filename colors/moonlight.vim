lua << EOF
package.loaded['moonlight'] = nil
package.loaded['moonlight.util'] = nil
package.loaded['moonlight.colors'] = nil
package.loaded['moonlight.theme'] = nil
package.loaded['moonlight.functions'] = nil

require('moonlight').set()
EOF
