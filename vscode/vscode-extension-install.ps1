# Script for batch installing Visual Studio Code extensions
# Specify extensions to be checked & installed by modifying $extensions

$extensions =
    "steoates.autoimport",
    "formulahendry.auto-rename-tag",
    "formulahendry.auto-close-tag",
    "streetsidesoftware.code-spell-checker",
    "EditorConfig.editorconfig",
    "dbaeumer.vscode-eslint",
    "donjayamanne.githistory",
    "eamodio.gitlens",
    "codezombiech.gitignore",
    "Zignd.html-css-class-completion",
    "leizongmin.node-module-intellisense",
    "eg2.vscode-npm-script",
    "christian-kohler.npm-intellisense",
    "christian-kohler.path-intellisense",
#    "ms-vscode.powershell",
    "esbenp.prettier-vscode",
    "syler.sass-indented",
    "cssho.vscode-svgviewer",
    "wayou.vscode-todo-highlight",
#    "WallabyJs.wallaby-vscode",
#    "WallabyJs.quokka-vscode",
    "xabikos.reactsnippets",
    "shyykoserhiy.git-autoconfig",
#    "zhouronghui.propertylist",
    "EQuimper.react-native-react-redux",
    "ms-vsliveshare.vsliveshare",
    "mikestead.dotenv",
    "kamikillerto.vscode-colorize"

$cmd = "code --list-extensions"
Invoke-Expression $cmd -OutVariable output | Out-Null
$installed = $output -split "\s"

foreach ($ext in $extensions) {
    if ($installed.Contains($ext)) {
        Write-Host $ext "already installed."
    } else {
        Write-Host "Installing" $ext "..."
        code --install-extension $ext
    }
}
