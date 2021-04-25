# Meta-CrySL

Meta-CrySL is a meta-specification language for CrySL. The main goal is to support reuse and modularization of CrySL specifications. Based on a domain analysis, we found that CrySL specifications might vary according to different perspectives, including:

   * JCA implementation (e.g., JCE provider or Bouncy Castle provider)
   * API implementation version (e.g., Bouncy Castle 1.60 x Bouncy Castle 1.50)
   * Cryptographic standards (e.g., FIPS and EuroCrypt)
   
# Approach

Meta-CrySL is mostly based on meta-programming. We use three different languages: 

   * ECrySL: a slight extension to the original CrySL language
   * Refinement: a language that supports different refinement operations over ECrySL specifications
   * Configuration: a language that puts together ECrySL and Refinement specifications 

We use a program generator infrastructure that takes as input a configuration file and outputs regular CrySL specifications. In this way, we do not have to modify the current crypto analysis of CogniCrypt.

# Requirements

We have successfully tested this implementation using the following settings.

   * Java Development Kit - Version 8
   * [Eclipse RCP 2019-06](https://www.eclipse.org/downloads/packages/release/2019-06/r/eclipse-ide-rcp-and-rap-developers)
   * Rascal-MPL 0.18.3 (you can use the current version from the update site
      * [Rascal-MPL Download page](https://www.rascal-mpl.org/start/)
      * [Rascal-MPL update site](https://update.rascal-mpl.org/stable/)
   * The following video shows how to use this implementation.
      * [MetaCrySL usage scenario](https://youtu.be/PmYWK926RrM)

Alternativelly, you can also use Meta-CrySL from the command line. Requirements:

   * Download the Rascal Commandline REPL.
      * This is a [JAR](https://update.rascal-mpl.org/console/rascal-shell-stable.jar) file that allows one to use Rascal from the command line. 

   * Create an alias for the downloaded file
      * `$ alias rascal-shell='java -Xmx1G -Xss32m -jar <PATH>/rascal-shell-stable.jar'`

   * Move to the local copy of the MetaCrySL repository
      * `$ cd <PATH-TO-THE-LOCAL-METACRYSL-REPOSITORY` 

   * Start the rascal-shell terminal
      * `$ rascal-shell`

   * Using the rascal-shell, import the `Main` module
      * `rascal> import generator::Main;`

   * Run the `main` function with the location of a `configuration` file.
      * eg.: `rascal> main(|cwd:///samples/jca/android/config/Android0108.config|);` 

*Note* it must be necessary to update the `src` and `out` folders in the configuration files.
Otherwise, a `File not found ...` exception might be thrown. See the example bellow. 

```
config Android0108 {
  src = /Users/rbonifacio/Documents/workspace-rascal/MetaCrySL/samples/jca;
  out = /Users/rbonifacio/tmp/target;

  ...
}
```
   
   
