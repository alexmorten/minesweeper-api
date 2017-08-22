class Savegames::FieldsController < FieldsController
  before_action :set_savegame

    private
        def set_savegame
            @savegame = Savegame.find(params[:savegame_id])
        end
end
