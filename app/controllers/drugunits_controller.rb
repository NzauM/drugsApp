class DrugunitsController < ApplicationController
    def index
        @drugunits = Drugunit.all
    end
end
