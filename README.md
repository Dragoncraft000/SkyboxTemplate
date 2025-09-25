# SkyboxTemplate: Example Skybox Code 
This repository contains a resource pack with multiple Skybox Shader examples to help you get started.  

It was made as an example for [SkyboxEngine](https://github.com/Dragoncraft000/SkyboxEngine/) but can also be used standalone
### SkyboxEngine Integration

The ocean shader requires SkyboxEngine for the daytime data
<details>

<summary>SkyboxEngine Config Snippet to register all skyboxes in this pack</summary>

```yml
skyboxRegistry:
  gradient:
    skyboxId: skyboxengine:model_shader_1
  noise:
    skyboxId: skyboxengine:model_shader_2
  animation:
    skyboxId: skyboxengine:model_shader_3
  raymarching:
    skyboxId: skyboxengine:model_shader_4
  ocean:
    skyboxId: skyboxengine:model_shader_5
    flags:
      encodePreciseTime: true
  vortex:
    skyboxId: skyboxengine:model_shader_6
  texture:
    skyboxId: skyboxengine:model_shader_9_texture

# Lowest Priority Skyboxes always applied if no other is active, leave empty to disable
defaultSkybox: ""
# Maps Dimension Keys (e.g minecraft:overworld) to registered skyboxes
dimensionSkyboxes:
  minecraft:overworld: texture
  minecraft:the_end: vortex
```

</details>

### Standalone  
The skyboxes are rendered using display entities with a custom model.  
By default, the pack includes premade ids for the first 9 skyboxes for ease of use and 7 shader examples.
`skyboxengine:model_shader_1` to `skyboxengine:model_shader_9`.
All texture models end in `_texture` because they need a slightly different UV layout.
<details>
<summary>All premade Shader Example Ids</summary>

  
- A simple vertical gradient -> skyboxengine:model_shader_1  
- A noise sampling example -> skyboxengine:model_shader_2  
- An animated noise example -> skyboxengine:model_shader_3  
- Raymarching with different shapes and operations -> skyboxengine:model_shader_4  
- Ocean Shader, ported from shadertoy -> skyboxengine:model_shader_5  
- Purple Vortex inspired by Outer Wilds -> skyboxengine:model_shader_6  
- A cloudy skybox loaded from a texture -> skyboxengine:model_shader_9_texture  

</details>


# Credits (SkyboxEngine & SkyboxTemplate)
- Dystortedd & [Ult-Effects](https://github.com/Dystortedd/Ult-Effects) (Utility shader code and inspiration for the project)
- Godlander (Help with understanding the math behind texture skybox texture mapping)
- AxaTheArcticFox (Help with understanding the math behind texture skybox texture mapping)


# Contributing
Contributions are always welcome, feel free to create a pull request or create an issue if you think a eature would be a good addition or found a bug.   
You can also create an issue or contact me if you have a suggestion for me to add.  

# License
SkyboxEngine & SkyboxTemplate are licensed under the MIT License, see LICENSE for more information.
