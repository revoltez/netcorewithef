FROM mcr.microsoft.com/dotnet/core/sdk:3.1
RUN dotnet tool install --global dotnet-ef
ENV PATH="${PATH}:/root/.dotnet/tools"
RUN mkdir App/
WORKDIR /App
RUN dotnet new console
RUN dotnet add package MySql.Data.EntityFrameworkCore
RUN dotnet add package NSec.Cryptography
RUN dotnet add package Microsoft.EntityFrameworkCore.Design
RUN dotnet add package Microsoft.EntityFrameworkCore.Tools
RUN dotnet add package BlockchainTypes --version 2.0.7
