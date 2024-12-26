local function get_jdtls()
    local mason_registry = require("mason-registry")

    local jdtls = mason_registry.get_package("jdtls")

    local jdtls_path = jdtls:get_install_path()

    local launcher = vim.fn.glob(jdtls_path .. "/plugins/org.eclipse.equinox.launcher_*.jar")

    local SYSTEM = "linux"

    local config = jdtls_path .. "/config_" .. SYSTEM

    local lombok = jdtls_path .. "/lombok.jar"

    return launcher, config, lombok
end


local function get_bundles()
    local mason_registry = require("mason-registry")
    local java_debug = mason_registry.get_package("java-debug-adapter")
    local java_debug_path = java_debug:get_install_path()
    local bundles = {
        vim.fn.glob(java_debug_path .. "/extension/server/com.microsoft.java.debug.plugin-*.jar", 1)
    }

    local java_test = mason_registry.get_package("java-test")
    local java_test_path = java_test:get_install_path()

    vim.list_extend(bundles, vim.split(vim.fn.glob(java_test_path .. "/extension/server/*jar", 1), "\n"))

    return bundles
end
