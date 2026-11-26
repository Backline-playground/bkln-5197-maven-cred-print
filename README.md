# bkln-5197-maven-cred-print

Test fixture for BKLN-5197. `mvnw` prints the Maven registry settings (and the repository's own CI settings) before running Maven, so any agent that builds the project prints them. Every login involved is fake.
