# Script for batch installing Visual Studio Code extensions
# Specify extensions to be checked & installed by modifying $extensions

$extensions =
    "steoates.autoimport",
    "formulahendry.auto-rename-tag",
    "formulahendry.auto-close-tag",
    "streetsidesoftware.code-spell-checker"
    "vangware.dark-plus-material",
    "joelday.docthis",
    "dracula-theme.theme-dracula",
    "EditorConfig.editorconfig",
    "dbaeumer.vscode-eslint",
    "donjayamanne.githistory",
    "eamodio.gitlens",
    "codezombiech.gitignore",
    "Zignd.html-css-class-completion",
    "PKief.material-icon-theme",
    "leizongmin.node-module-intellisense",
    "eg2.vscode-npm-script",
    "christian-kohler.npm-intellisense",
    "azemoh.one-monokai",
    "christian-kohler.path-intellisense",
    "ms-vscode.powershell",
    "esbenp.prettier-vscode",
    "robinbentley.sass-indented",
    "cssho.vscode-svgviewer",
    "wayou.vscode-todo-highlight",
    "WallabyJs.wallaby-vscode",
    "xabikos.reactsnippets",
    "shyykoserhiy.git-autoconfig"

$cmd = "code --list-extensions"
Invoke-Expression $cmd -OutVariable output | Out-Null
$installed = $output -split "\s"

foreach ($ext in $extensions) {
    if ($installed.Contains($ext)) {
        Write-Host $ext "already installed." -ForegroundColor Gray
    } else {
        Write-Host "Installing" $ext "..." -ForegroundColor White
        code --install-extension $ext
    }
}
