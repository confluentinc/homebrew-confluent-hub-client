# Confluent Hub Client Tap

This a brew tap repository containing a "Formula" for Confluent Hub Client.

## Usage

Run the following in your command-line:

```sh
$ brew tap confluentinc/homebrew-confluent-hub-client 
$ brew cask install confluent-hub-client
```

# Release management
## Prepare new formula's version for release:

- Use following Jenkins job: https://jenkins.confluent.io/job/hub-client-prepare-release-brew/.

| Parameter name  | Meaning                                                                                                     |
| --------------- |:-----------------------------------------------------------------------------------------------------------:|
| RELEASE_TAG     | Which tag to use for an archive                                                                             |
| UPDATE_LATEST   | Update the latest version, available here http://client.hub.confluent.io/confluent-hub-client-latest.tar.gz |

- Submit a PR for bumping up a formula
The previous job should generate a link for submitting a PR, i.e.:

```
remote:
remote: Create a pull request for 'prepare-v6.0.0-beta181009071136' on GitHub by visiting:
remote:      https://github.com/sansanichfb/homebrew-confluent-hub-client/pull/new/prepare-v6.0.0-beta181009071136
```

## Finalize release
Get approval and merge a PR.
After PR is merged, users should have access to the updated version of Confluent Hub client via brew cask formula.