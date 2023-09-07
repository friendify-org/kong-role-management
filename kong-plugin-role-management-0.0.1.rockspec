local plugin_name = "role-management"
local package_name = "kong-plugin-" .. plugin_name
local package_version = "0.0.1"
local rockspec_revision = "1"

local github_account_name = "Kong"
local github_repo_name = "kong-plugin"
local git_checkout = package_version == "dev" and "master" or package_version


package = package_name
version = package_version .. "-" .. rockspec_revision
supported_platforms = { "linux", "macosx" }
source = {
  -- url = "git+https://github.com/"..github_account_name.."/"..github_repo_name..".git",
  -- branch = master,
  url=file:///Users/teamdev/Documents/hoaian_dev/friendify/api-gateway/plugins/role-manage/
}


description = {

}


dependencies = {
}


build = {
  type = "builtin",
  modules = {
    -- TODO: add any additional code files added to the plugin
    ["kong.plugins."..plugin_name..".handler"] = "kong/plugins/"..plugin_name.."/handler.lua",
    ["kong.plugins."..plugin_name..".schema"] = "kong/plugins/"..plugin_name.."/schema.lua",
  }
}
