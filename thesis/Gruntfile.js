module.exports = function(grunt) {

  grunt.initConfig({
    watch: {
      files: ['**/*.tex', '**/*.bib'],
      tasks: ['shell']
    },
    shell: {
      pdf: {
        command: 'make'
      }
    }
  });

  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-shell');

  grunt.registerTask('default', ['shell']);

};