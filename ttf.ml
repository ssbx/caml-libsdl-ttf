open CamlSDL2

(** {:https://wiki.libsdl.org/SDL2_ttf/CategoryAPI} *)

let get_error = Sdl.get_error
let set_error = Sdl.set_error

module Font = struct
  type t
end

external init : unit -> unit = "caml_TTF_Init"
external quit : unit -> unit = "caml_TTF_Quit"
external open_font : file:string -> ptsize:int -> Font.t = "caml_TTF_OpenFont"
external close_font : Font.t -> unit = "caml_TTF_CloseFont"

external render_text_solid
  :  font:Font.t
  -> text:string
  -> fg:Sdl.Color.t
  -> Sdl.Surface.t
  = "caml_TTF_RenderText_Solid"

external render_text_blended
  :  font:Font.t
  -> text:string
  -> fg:Sdl.Color.t
  -> Sdl.Surface.t
  = "caml_TTF_RenderText_Blended"

external render_text_blended_wrapped
  :  font:Font.t
  -> text:string
  -> fg:Sdl.Color.t
  -> wraplength:Sdl.uint32
  -> Sdl.Surface.t
  = "caml_TTF_RenderText_Blended_Wrapped"
