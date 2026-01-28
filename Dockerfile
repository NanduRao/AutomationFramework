FROM mcr.microsoft.com/dotnet/sdk:6.0
WORKDIR /app
COPY . .
RUN dotnet restore
RUN dotnet build --configuration Release
CMD ["dotnet", "test", "--no-build", "--verbosity", "normal"]