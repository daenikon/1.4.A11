# `vim.ui.input`
Prompts the user for input, allowing arbitrary (potentially asynchronous) work until `on_confirm`.

## Example
```lua
vim.ui.input({ prompt = 'Jump to link number: ' }, function(input) 
    ...
end)
```
