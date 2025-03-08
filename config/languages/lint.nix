{
  plugins.lint = {
    enable = true;
    lintersByFt = {
      dockerfile = [
        "hadolint"
      ];
      json = [
        "jsonlint"
      ];
      markdown = [
        "vale"
      ];
      rst = [
        "vale"
      ];
      terraform = [
        "tflint"
      ];
      text = [
        "vale"
      ];
    };
  };
}
