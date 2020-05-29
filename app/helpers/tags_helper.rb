# frozen_string_literal: true

module TagsHelper
    def tag_params
        params.require(:tag).permit(:name)
      end
end
