-- Take output of command and open in scratch buffer
-- Example :R ls -l
function R(...)
    local cmd = table.concat({...}, ' ')
    vim.cmd(string.format('new | setlocal buftype=nofile bufhidden=hide noswapfile | r !%s', cmd))
end

vim.cmd('command! -nargs=* -complete=shellcmd R lua R(<q-args>)')
