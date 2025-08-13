import Lake
open Lake DSL

package LFT

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "308445d7985027f538e281e18df29ca16ede2ba3"

@[default_target]
lean_lib LFT