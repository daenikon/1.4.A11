# References
- [Lua Style Guide](http://lua-users.org/wiki/LuaStyleGuide)

# Notes
- "(*{placeholder*}*) is used in place of "e.g."

# Indentation
- 2 spaces for Tab

# Naming
## Variables
- Scope
    * Larger (*global*) --> more descriptive
    * Smaller (*function*) --> less descriptive
- Variables holding values or objects are typically lowercase and short (*color*)
- Prefix Boolean values with "is" (*isUsed*)
- Constants are often given in all caps, optionally separated by underscores (*HEX_RED*, *MAXLINES*)
- The variable consisting of only an underscore "_" is commonly used as a placeholder when you want to ignore the variable:
    * `for _,v in ipairs(t) do print(v) end`
- i, k, v, and t are often used as follows:
```lua
for k,v in pairs(t) ... end
for i,v in ipairs(t) ... end
mt.__newindex = function(t, k, v) ... end
```

## Functions
- Use underscores (*print_table*) 
- prefix Boolean functions with "is" (*is_directory*)

## Module/package
- Nouns with names that are short and lowercase, with nothing between words (*luasql*, *lualdap*)

# **TO BE CONTINUED**
