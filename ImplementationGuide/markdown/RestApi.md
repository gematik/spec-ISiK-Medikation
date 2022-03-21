# REST-API

Es gelten grundsätzlich die [Allgemeinen Hinweise zur REST API aus dem Basismodul](https://simplifier.net/guide/ImplementierungsleitfadenISiK-Basismodul/UebergreifendeFestlegungenRest).

Abweichend hiervon bzw. ergänzend hierzu gilt:

* Das Erstellen einer Ressource per HTTP POST (Create-Interaktion) MUSS unterstützt werden.

* Das Update einer Ressource per HTTP PUT (Update-Interaktion) MUSS unterstützt werden.

* Das Löschen einer Ressource per HTTP DELETE (Delete-Interaktion, vgl. [FHIR RESTful API - Delete](http://www.hl7.org/fhir/http.html#delete)) KANN unterstützt werden, ist aber nicht Gegenstand weiterer Ausarbeitung dieses Implementierungsleitfadens. Als Alternative zur Delete-Interaktion kann das Setzen eines entsprechenden Ressourcen-Status (beispielsweise "entered-in-error") dienen.

## Transaktionen

FHIR-Transaktionen MÜSSEN unterstützt werden, vgl. [FHIR RESTful API - Batch/Transaction](http://www.hl7.org/fhir/http.html#transaction). Es MÜSSEN die dort im Bereich "transaction" genannten Punkte unterstüzt werden. Eine reine Batch-Verarbeitung ist nicht ausreichend.

Für jede schreibende Gesamt-Interaktion (Create, Update sowie ggf. Delete), bei der mehr als eine Ressourcen-Instanz erzeugt, geändert oder gelöscht wird, MUSS ein FHIR-Transaktions-Bundle verwendet werden wie in diesem Leitfaden profiliert.

Wird nur eine oder keine Ressourcen-Instanz modifiziert, kann ebenfalls eine Transaktion verwendet werden. Der Server MUSS auch solche Transaktionen verarbeiten. Die obigen Anforderungen bezüglich der Interaktionen außerhalb von Transaktionen bleiben unbeschadet.

Der Server MUSS als Antwort auf ein FHIR Transaktions-Bundle ein FHIR TransactionResponse-Bundle senden wie in diesem Leitfaden profiliert und in der FHIR-Spezifikation beschrieben.

## Historie

Die Historisierung/Versionierung von FHIR-Ressourcen-Instanzen (vgl.[FHIR RESTful API - History](http://www.hl7.org/fhir/http.html#history)) KANN unterstützt werden, ist aber nicht Gegenstand weiterer Ausarbeitung dieses Implementierungsleitfadens.
