# SchoolOfNet_Iniciando_Com_DART
Repositório do curso Iniciando com DART


# Instação usando o choco
  https://chocolatey.org/install

  Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Instalar DART: 
  https://dart.dev/get-dart

  Comando:
   choco install dart-sdk

# VSCODE:
  Incalar o complemento :
  Dart

# Exemplo de programa:

<code>
void main(List<String> args) {

  String nome = 'Carlos Marian';
  print('Olá '+ nome);
  
}
</code>

Para rodar, no command :

dart .\hello.dart


# HTML

Instalar o pacote WebDev:

pub global activate webdev 

Gerar dos dart em js

dart2js

vai criar o arquivo "script.js" com base no dart "script.dart".

dart2js -o .\02\script.js .\02\script.dart
