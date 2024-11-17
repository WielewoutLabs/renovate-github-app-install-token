import { App } from "octokit";

try {
    const appId = process.env.GITHUB_APP_ID;
    const installId = process.env.GITHUB_APP_INSTALL_ID;
    const privateKey = process.env.GITHUB_APP_PRIVATE_KEY;

    const renovateConfigFile = process.env.RENOVATE_CONFIG_FILE || "config.json";
    const renovateConfigDestination = process.env.RENOVATE_CONFIG_DESTINATION || renovateConfigFile;

    const app = new App({
        appId: appId,
        privateKey: privateKey,
    });
    const octokit = await app.getInstallationOctokit(installId);
    const installToken = await octokit.auth({
        type: "installation",
    });

    const data = await Deno.readTextFile(renovateConfigFile);

    let renovateConfig = JSON.parse(data);
    renovateConfig = { ...renovateConfig, "token": installToken.token };

    await Deno.writeTextFile(renovateConfigDestination, JSON.stringify(renovateConfig));
} catch (error) {
    console.error(error);
    Deno.exit(1);
}
