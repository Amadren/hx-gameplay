package org.gameplay3d;

import org.gameplay3d.immutable.IRectangle;
import org.gameplay3d.immutable.IVector4;
import org.gameplay3d.intern.INativeBinding;
import org.gameplay3d.intern.Macros;
import org.gameplay3d.util.Handle;
import org.gameplay3d.util.NativeInterface;
import org.gameplay3d.util.OutParameter;
import org.gameplay3d.wrapper.TimeListenerWrapper;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Game : public GameplayObject
class Game extends GameplayObject
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

     var _viewport:Rectangle;

    // DECL: (none)
    function initialize():Void
    {
    }

    // DECL: (none)
    function finalize():Void
    {
    }

    // DECL: (none)
    function update(elapsedTime:Float):Void
    {
    }

    // DECL: (none)
    function render(elapsedTime:Float):Void
    {
    }

    // DECL: inline bool canExit() const;
    public function canExit():Bool
    {
        return hx_Game_canExit(nativeObject);
    }

    // DECL: void clear(ClearFlags flags, const Vector4& clearColor, float clearDepth, int clearStencil);
    public function clear_Int_V4_Flt_Int(flags:Int, clearColor:IVector4, clearDepth:Float, clearStencil:Int):Void
    {
        hx_Game_clear_Int_V4_Flt_Int(nativeObject, flags, clearColor.native(), clearDepth, clearStencil);
    }

    // DECL: void clear(ClearFlags flags, float red, float green, float blue, float alpha, float clearDepth, int clearStencil);
    public function clear_Int_FltX5_Int(flags:Int, red:Float, green:Float, blue:Float, alpha:Float, clearDepth:Float, clearStencil:Int):Void
    {
        hx_Game_clear_Int_FltX5_Int(nativeObject, flags, red, green, blue, alpha, clearDepth, clearStencil);
    }

    // DECL: inline void displayKeyboard(bool display);
    public function displayKeyboard(display:Bool):Void
    {
        hx_Game_displayKeyboard(nativeObject, display);
    }

    // DECL: void exit();
    public function exit():Void
    {
        hx_Game_exit(nativeObject);
    }

    // DECL: void frame();
    public function frame():Void
    {
        hx_Game_frame(nativeObject);
    }

    // DECL: virtual void gamepadEvent(Gamepad::GamepadEvent evt, Gamepad* gamepad);
    public function gamepadEvent(evt:Int, gamepad:Gamepad):Void
    {
    }

    // DECL: virtual void gesturePinchEvent(int x, int y, float scale);
    public function gesturePinchEvent(x:Int, y:Int, scale:Float):Void
    {
    }

    // DECL: virtual void gestureSwipeEvent(int x, int y, int direction);
    public function gestureSwipeEvent(x:Int, y:Int, direction:Int):Void
    {
    }

    // DECL: virtual void gestureTapEvent(int x, int y);
    public function gestureTapEvent(x:Int, y:Int):Void
    {
    }

    // DECL: inline AIController* getAIController() const;
    public function getAIController():AIController
    {
        return AIController.wrap(hx_Game_getAIController());
    }

    // DECL: static double getAbsoluteTime();
    public static function getAbsoluteTime():Float
    {
        return hx_Game_static_getAbsoluteTime();
    }

    // DECL: inline void getAccelerometerValues(float* pitch, float* roll);
    public function getAccelerometerValues(pitch:OutParameter<Float>, roll:OutParameter<Float>):Void
    {
        hx_Game_getAccelerometerValues(nativeObject, pitch, roll);
    }

    // DECL: inline AnimationController* getAnimationController() const;
    public function getAnimationController():AnimationController
    {
        return AnimationController.wrap(hx_Game_getAnimationController(nativeObject));
    }

    // DECL: inline float getAspectRatio() const;
    public function getAspectRatio():Float
    {
        return hx_Game_getAspectRatio(nativeObject);
    }

    // DECL: inline AudioController* getAudioController() const;
    public function getAudioController():AudioController
    {
        return AudioController.wrap(hx_Game_getAudioController(nativeObject));
    }

    //TODO
    // DECL: AudioListener* getAudioListener();
    public function getAudioListener():AudioListener
    {
        return AudioListener.wrap(hx_Game_getAudioListener(nativeObject));
    }

    //DECL: Properties* getConfig() const;
    public function getConfig():Properties
    {
        return Properties.wrap(hx_Game_getConfig(nativeObject));
    }

    // DECL: inline unsigned int getFrameRate() const;
    public function getFrameRate():Int
    {
        return hx_Game_getFrameRate(nativeObject);
    }

    // DECL: static double getGameTime();
    public static function getGameTime():Float
    {
        return hx_Game_static_getGameTime();
    }

    // DECL: inline Gamepad* getGamepad(unsigned int index) const;
    public function getGamepad(index:Int):Gamepad
    {
        return Gamepad.wrap(hx_Game_getGamepad(nativeObject, index));
    }

    // DECL: inline unsigned int getGamepadCount() const;
    public function getGamepadCount():Int
    {
        return hx_Game_getGamepadCount(nativeObject);
    }

    // DECL: inline unsigned int getHeight() const;
    public function getHeight():Int
    {
        return hx_Game_getHeight(nativeObject);
    }

    // DECL: static Game* getInstance();
    public static function getInstance():Game
    {
        return Game.wrap(hx_Game_static_getInstance());
    }

    // DECL: inline PhysicsController* getPhysicsController() const;
    public function getPhysicsController():PhysicsController
    {
        return PhysicsController.wrap(hx_Game_getPhysicsController(nativeObject));
    }

    //TODO
    // DECL: inline ScriptController* getScriptController() const;
    //public function getScriptController():ScriptController
    //{
        //return hx_Game_getScriptController(nativeObject);
    //}

    // DECL: inline State getState() const;
    public function getState():Int
    {
        return hx_Game_getState(nativeObject);
    }

    // DECL: inline const Rectangle& getViewport() const;
    public function getViewport():IRectangle
    {
        return Macros.impersonateResult(_viewport, hx_Game_getViewport(nativeObject));
    }

    // DECL: inline unsigned int getWidth() const;
    public function getWidth():Int
    {
        return hx_Game_getWidth(nativeObject);
    }

    // DECL: inline bool hasMouse();
    public function hasMouse():Bool
    {
        return hx_Game_hasMouse(nativeObject);
    }

    // DECL: inline bool isCursorVisible();
    public function isCursorVisible():Bool
    {
        return hx_Game_isCursorVisible(nativeObject);
    }

    // DECL: bool isGestureRegistered(Gesture::GestureEvent evt);
    public function isGestureRegistered(evt:Int):Bool
    {
        return hx_Game_isGestureRegistered(nativeObject, evt);
    }

    // DECL: bool isGestureSupported(Gesture::GestureEvent evt);
    public function isGestureSupported(evt:Int):Bool
    {
        return hx_Game_isGestureSupported(nativeObject, evt);
    }

    // DECL: inline bool isInitialized() const;
    public function isInitialized():Bool
    {
        return hx_Game_isInitialized(nativeObject);
    }

    // DECL: inline bool isMouseCaptured();
    public function isMouseCaptured():Bool
    {
        return hx_Game_isMouseCaptured(nativeObject);
    }

    // DECL: inline bool isMultiTouch() const;
    public function isMultiTouch():Bool
    {
        return hx_Game_isMultiTouch(nativeObject);
    }

    // DECL: static bool isVsync();
    public static function isVsync():Bool
    {
        return hx_Game_static_isVsync();
    }

    // DECL: virtual void keyEvent(Keyboard::KeyEvent evt, int key);
    public function keyEvent(evt:Int, key:Int):Void
    {
    }

    // DECL: bool launchURL(const char *url) const;
    public function launchURL(url:String):Bool
    {
        return hx_Game_launchURL(nativeObject, url);
    }

    // DECL: virtual void menuEvent();
    public function menuEvent():Void
    {
    }

    // DECL: virtual bool mouseEvent(Mouse::MouseEvent evt, int x, int y, int wheelDelta);
    public function mouseEvent(evt:Int, x:Int, y:Int, wheelDelta:Int):Bool
    {
        return false;
    }

    // DECL: void pause();
    public function pause():Void
    {
        hx_Game_pause(nativeObject);
    }

    // DECL: void registerGesture(Gesture::GestureEvent evt);
    public function registerGesture(evt:Int):Void
    {
        hx_Game_registerGesture(nativeObject, evt);
    }

    // DECL: void resume();
    public function resume():Void
    {
        hx_Game_resume(nativeObject);
    }

    // DECL: int run();
    public function run():Int
    {
        return hx_Game_run(nativeObject);
    }

    // DECL: void schedule(float timeOffset, TimeListener* timeListener, void* cookie = 0);
    public function schedule_Flt_Lsnr_Hndl(timeOffset:Float, timeListener:TimeListenerWrapper, cookie:Handle = null):Void
    {
        hx_Game_schedule_Flt_Lsnr_Hndl(nativeObject, timeOffset, timeListener.native(), cookie.native());
    }

    // DECL: void schedule(float timeOffset, const char* function);
    public function schedule_Flt_Str(timeOffset:Float, _function:String):Void
    {
        hx_Game_schedule_Flt_Str(nativeObject, timeOffset, _function);
    }

    // DECL: inline void setCursorVisible(bool visible);
    public function setCursorVisible(visible:Bool):Void
    {
        hx_Game_setCursorVisible(nativeObject, visible);
    }

    // DECL: inline void setMouseCaptured(bool captured);
    public function setMouseCaptured(captured:Bool):Void
    {
        hx_Game_setMouseCaptured(nativeObject, captured);
    }

    // DECL: inline void setMultiTouch(bool enabled);
    public function setMultiTouch(enabled:Bool):Void
    {
        hx_Game_setMultiTouch(nativeObject, enabled);
    }

    // DECL: void setViewport(const Rectangle& viewport);
    public function setViewport(viewport:IRectangle):Void
    {
        hx_Game_setViewport(nativeObject, viewport.native());
    }

    // DECL: static void setVsync(bool enable);
    public static function setVsync(enable:Bool):Void
    {
        hx_Game_static_setVsync(enable);
    }

    // DECL: virtual void touchEvent(Touch::TouchEvent evt, int x, int y, unsigned int contactIndex);
    public function touchEvent(evt:Int, x:Int, y:Int, contactIndex:Int):Void
    {
    }

    // DECL: void unregisterGesture(Gesture::GestureEvent evt);
    public function unregisterGesture(evt:Int):Void
    {
        hx_Game_unregisterGesture(nativeObject, evt);
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    // DECL: (none)
    static function constructNativeObject(thisObj:Game):Dynamic
    {
        return hx_Game_Construct(
                                            thisObj.initialize,
                                            thisObj.finalize,
                                            thisObj.update,
                                            thisObj.render,
                                            thisObj.gamepadEvent,
                                            thisObj.gesturePinchEvent,
                                            thisObj.gestureSwipeEvent,
                                            thisObj.gestureTapEvent,
                                            thisObj.keyEvent,
                                            thisObj.menuEvent,
                                            thisObj.mouseEvent,
                                            thisObj.touchEvent
                                        );
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Game_Construct = NativeInterface.loadMember(Game, "Construct", -1);
    static var hx_Game_canExit = NativeInterface.loadMember(Game, "canExit", 1);
    static var hx_Game_clear_Int_V4_Flt_Int = NativeInterface.loadMember(Game, "clear_Int_V4_Flt_Int", 5);
    static var hx_Game_clear_Int_FltX5_Int = NativeInterface.loadMember(Game, "clear_Int_FltX5_Int", -1);
    static var hx_Game_displayKeyboard = NativeInterface.loadMember(Game, "displayKeyboard", 2);
    static var hx_Game_exit = NativeInterface.loadMember(Game, "exit", 1);
    static var hx_Game_frame = NativeInterface.loadMember(Game, "frame", 1);
    static var hx_Game_getAIController = NativeInterface.loadMember(Game, "getAIController", 1);
    static var hx_Game_static_getAbsoluteTime = NativeInterface.loadMember(Game, "static_getAbsoluteTime", 0);
    static var hx_Game_getAccelerometerValues = NativeInterface.loadMember(Game, "getAccelerometerValues", 3);
    static var hx_Game_getAnimationController = NativeInterface.loadMember(Game, "getAnimationController", 1);
    static var hx_Game_getAspectRatio = NativeInterface.loadMember(Game, "getAspectRatio", 1);
    static var hx_Game_getAudioController = NativeInterface.loadMember(Game, "getAudioController", 1);
    static var hx_Game_getAudioListener = NativeInterface.loadMember(Game, "getAudioListener", 1);
    static var hx_Game_getConfig = NativeInterface.loadMember(Game, "getConfig", 1);
    static var hx_Game_getFrameRate = NativeInterface.loadMember(Game, "getFrameRate", 1);
    static var hx_Game_static_getGameTime = NativeInterface.loadMember(Game, "static_getGameTime", 0);
    static var hx_Game_getGamepad = NativeInterface.loadMember(Game, "getGamepad", 2);
    static var hx_Game_getGamepadCount = NativeInterface.loadMember(Game, "getGamepadCount", 1);
    static var hx_Game_getHeight = NativeInterface.loadMember(Game, "getHeight", 1);
    static var hx_Game_static_getInstance = NativeInterface.loadMember(Game, "static_getInstance", 0);
    static var hx_Game_getPhysicsController = NativeInterface.loadMember(Game, "getPhysicsController", 1);
    static var hx_Game_getScriptController = NativeInterface.loadMember(Game, "getScriptController", 1);
    static var hx_Game_getState = NativeInterface.loadMember(Game, "getState", 1);
    static var hx_Game_getViewport = NativeInterface.loadMember(Game, "getViewport", 1);
    static var hx_Game_getWidth = NativeInterface.loadMember(Game, "getWidth", 1);
    static var hx_Game_hasMouse = NativeInterface.loadMember(Game, "hasMouse", 1);
    static var hx_Game_isCursorVisible = NativeInterface.loadMember(Game, "isCursorVisible", 1);
    static var hx_Game_isGestureRegistered = NativeInterface.loadMember(Game, "isGestureRegistered", 2);
    static var hx_Game_isGestureSupported = NativeInterface.loadMember(Game, "isGestureSupported", 2);
    static var hx_Game_isInitialized = NativeInterface.loadMember(Game, "isInitialized", 1);
    static var hx_Game_isMouseCaptured = NativeInterface.loadMember(Game, "isMouseCaptured", 1);
    static var hx_Game_isMultiTouch = NativeInterface.loadMember(Game, "isMultiTouch", 1);
    static var hx_Game_launchURL = NativeInterface.loadMember(Game, "launchURL", 2);
    static var hx_Game_static_isVsync = NativeInterface.loadMember(Game, "static_isVsync", 0);
    static var hx_Game_pause = NativeInterface.loadMember(Game, "pause", 1);
    static var hx_Game_registerGesture = NativeInterface.loadMember(Game, "registerGesture", 2);
    static var hx_Game_resume = NativeInterface.loadMember(Game, "resume", 1);
    static var hx_Game_run = NativeInterface.loadMember(Game, "run", 1);
    static var hx_Game_schedule_Flt_Lsnr_Hndl = NativeInterface.loadMember(Game, "schedule_Flt_Lsnr_Hndl", 4);
    static var hx_Game_schedule_Flt_Str = NativeInterface.loadMember(Game, "schedule_Flt_Str", 3);
    static var hx_Game_setCursorVisible = NativeInterface.loadMember(Game, "setCursorVisible", 2);
    static var hx_Game_setMouseCaptured = NativeInterface.loadMember(Game, "setMouseCaptured", 2);
    static var hx_Game_setMultiTouch = NativeInterface.loadMember(Game, "setMultiTouch", 2);
    static var hx_Game_setViewport = NativeInterface.loadMember(Game, "setViewport", 2);
    static var hx_Game_static_setVsync = NativeInterface.loadMember(Game, "static_setVsync", 1);
    static var hx_Game_unregisterGesture = NativeInterface.loadMember(Game, "unregisterGesture", 2);
}

// END
